# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.


module Seahorse
  module Model
    module Shapes
      class Shape < Node
        class << self
          def register_type(hash)
            hash.each do |type, klass|
              klass.type = type
            end
            types.update(hash)
          end

          def types; @@types ||= {} end

          attr_accessor :type

          def from_hash_class(hash)
            return self if hash.nil?
            raise "Shape #{hash} has undefined type" if hash["type"].nil?
            if type = types[hash["type"].to_sym]
              type
            else
              raise "Unregistered shape type #{hash["type"]}"
            end
          end
        end

        def initialize(*)
          super
          self.metadata = {}
          self.type = self.class.type
        end

        attr_accessor :member_name

        property :type, Symbol
        property :required, Boolean
        property :default, Object
        property :documentation, String
        property :location, String
        property :min_length, Integer
        property :max_length, Integer
        property :pattern, String
        property :serialized_name, String
        property :metadata, Hash

        def serialized_name
          name = @serialized_name || @member_name.to_s
          name == '' ? nil : name
        end

        def to_hash
          hash = super
          hash.delete('serialized_name') if @serialized_name.nil?
          hash.delete('metadata') if hash['metadata'].empty?
          hash
        end

      end

      class ScalarShape < Shape; end
      class IntegerShape < ScalarShape; end
      class FloatShape < ScalarShape; end
      class BooleanShape < ScalarShape; end
      class BlobShape < ScalarShape; end

      class StringShape < ScalarShape
        property :enum, [String]
      end

      class TimestampShape < ScalarShape
        property :timestamp_format, String
      end

      class ListShape < Shape
        property :members, Shape

        def initialize(*)
          super
          self.members = nil
        end
      end

      class MapShape < Shape
        property :keys, Shape
        property :members, Shape

        def initialize(*)
          super
          self.keys = nil
          self.members = nil
        end
      end

      class StructureShape < Shape
        property :members, Symbol => Shape

        def initialize(*)
          super
          self.members = {}
        end

        # @return [Hash<String,Shape>]
        def serialized_members
          @serialized_members ||= compute_serialized_members
        end

        private

        def compute_serialized_members
          members.inject({}) do |hash, (member_name, member)|
            hash[member.serialized_name || member.member_name.to_s] = member
            hash
          end
        end
      end

      class Shape < Node
        register_type structure: StructureShape
        register_type list: ListShape
        register_type map: MapShape
        register_type string: StringShape
        register_type integer: IntegerShape
        register_type timestamp: TimestampShape
        register_type boolean: BooleanShape
        register_type blob: BlobShape
        register_type float: FloatShape
      end
    end
  end
end
