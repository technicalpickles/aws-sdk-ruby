# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

module Aws
  module StorageGateway
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :storagegateway

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Activates the gateway you previously deployed on your host. For more
      # information, see [ Activate the AWS Storage Gateway][1]. In the
      # activation process, you specify information such as the you want to
      # use for storing snapshots, the time zone for scheduled snapshots the
      # gateway snapshot schedule window, an activation key, and a name for
      # your gateway. The activation process also associates your gateway with
      # your account; for more information, see UpdateGatewayInformation.
      #
      # <note markdown="1">You must turn on the gateway VM before you can activate your gateway.
      #
      #  </note>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedActivateGateway-common.html
      # @option params [required, String] :activation_key
      #   Your gateway activation key. You can obtain the activation key by
      #   sending an HTTP GET request with redirects enabled to the gateway IP
      #   address (port 80). The redirect URL returned in the response provides
      #   you the activation key for your gateway in the query string parameter
      #   `activationKey`. It may also include other activation-related
      #   parameters, however, these are merely defaults -- the arguments you
      #   pass to the `ActivateGateway` API call determine the actual
      #   configuration of your gateway.
      # @option params [required, String] :gateway_name
      #   The name you configured for your gateway.
      # @option params [required, String] :gateway_timezone
      #   A value that indicates the time zone you want to set for the gateway.
      #   The time zone is used, for example, for scheduling snapshots and your
      #   gateway\'s maintenance schedule.
      # @option params [required, String] :gateway_region
      #   A value that indicates the region where you want to store the snapshot
      #   backups. The gateway region specified must be the same region as the
      #   region in your `Host` header in the request. For more information
      #   about available regions and endpoints for AWS Storage Gateway, see
      #   [Regions and Endpoints][1] in the *Amazon Web Services Glossary*.
      #
      #   Valid Values: \"us-east-1\", \"us-west-1\", \"us-west-2\",
      #   \"eu-west-1\", \"eu-central-1\", \"ap-northeast-1\",
      #   \"ap-northeast-2\", \"ap-southeast-1\", \"ap-southeast-2\",
      #   \"sa-east-1\"
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region
      # @option params [String] :gateway_type
      #   A value that defines the type of gateway to activate. The type
      #   specified is critical to all later functions of the gateway and cannot
      #   be changed after activation. The default value is `STORED`.
      # @option params [String] :tape_drive_type
      #   The value that indicates the type of tape drive to use for
      #   gateway-VTL. This field is optional.
      #
      #   Valid Values: \"IBM-ULT3580-TD5\"
      # @option params [String] :medium_changer_type
      #   The value that indicates the type of medium changer to use for
      #   gateway-VTL. This field is optional.
      #
      #   Valid Values: \"STK-L700\", \"AWS-Gateway-VTL\"
      # @return [Types::ActivateGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ActivateGatewayOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.activate_gateway({
      #     activation_key: "ActivationKey", # required
      #     gateway_name: "GatewayName", # required
      #     gateway_timezone: "GatewayTimezone", # required
      #     gateway_region: "RegionId", # required
      #     gateway_type: "GatewayType",
      #     tape_drive_type: "TapeDriveType",
      #     medium_changer_type: "MediumChangerType",
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def activate_gateway(params = {}, options = {})
        req = build_request(:activate_gateway, params)
        req.send_request(options)
      end

      # Configures one or more gateway local disks as cache for a
      # cached-volume gateway. This operation is supported only for the
      # gateway-cached volume architecture (see [Storage Gateway
      # Concepts][1]).
      #
      # In the request, you specify the gateway Amazon Resource Name (ARN) to
      # which you want to add cache, and one or more disk IDs that you want to
      # configure as cache.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, Array<String>] :disk_ids
      # @return [Types::AddCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddCacheOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_cache({
      #     gateway_arn: "GatewayARN", # required
      #     disk_ids: ["DiskId"], # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_cache(params = {}, options = {})
        req = build_request(:add_cache, params)
        req.send_request(options)
      end

      # Adds one or more tags to the specified resource. You use tags to add
      # metadata to resources, which you can use to categorize these
      # resources. For example, you can categorize resources by purpose,
      # owner, environment, or team. Each tag consists of a key and a value,
      # which you define. You can add tags to the following AWS Storage
      # Gateway resources:
      #
      # * Storage gateways of all types
      #
      # ^
      # ^
      #
      # * Storage Volumes
      #
      # ^
      # ^
      #
      # * Virtual Tapes
      #
      # ^
      #
      # You can create a maximum of 10 tags for each resource. Virtual tapes
      # and storage volumes that are recovered to a new gateway maintain their
      # tags.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the resource you want to add tags
      #   to.
      # @option params [required, Array<Types::Tag>] :tags
      #   The key-value pair that represents the tag you want to add to the
      #   resource. The value can be an empty string.
      #
      #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
      #   representable in UTF-8 format, and the following special characters: +
      #   - = . \_ : / @.
      #
      #    </note>
      # @return [Types::AddTagsToResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddTagsToResourceOutput#resource_arn #ResourceARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_resource({
      #     resource_arn: "ResourceARN", # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.resource_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags_to_resource(params = {}, options = {})
        req = build_request(:add_tags_to_resource, params)
        req.send_request(options)
      end

      # Configures one or more gateway local disks as upload buffer for a
      # specified gateway. This operation is supported for both the
      # gateway-stored and gateway-cached volume architectures.
      #
      # In the request, you specify the gateway Amazon Resource Name (ARN) to
      # which you want to add upload buffer, and one or more disk IDs that you
      # want to configure as upload buffer.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, Array<String>] :disk_ids
      # @return [Types::AddUploadBufferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddUploadBufferOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_upload_buffer({
      #     gateway_arn: "GatewayARN", # required
      #     disk_ids: ["DiskId"], # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_upload_buffer(params = {}, options = {})
        req = build_request(:add_upload_buffer, params)
        req.send_request(options)
      end

      # Configures one or more gateway local disks as working storage for a
      # gateway. This operation is supported only for the gateway-stored
      # volume architecture. This operation is deprecated in cached-volumes
      # API version 20120630. Use AddUploadBuffer instead.
      #
      # <note markdown="1"> Working storage is also referred to as upload buffer. You can also use
      # the AddUploadBuffer operation to add upload buffer to a stored-volume
      # gateway.
      #
      #  </note>
      #
      # In the request, you specify the gateway Amazon Resource Name (ARN) to
      # which you want to add working storage, and one or more disk IDs that
      # you want to configure as working storage.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, Array<String>] :disk_ids
      #   An array of strings that identify disks that are to be configured as
      #   working storage. Each string have a minimum length of 1 and maximum
      #   length of 300. You can get the disk IDs from the ListLocalDisks API.
      # @return [Types::AddWorkingStorageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddWorkingStorageOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_working_storage({
      #     gateway_arn: "GatewayARN", # required
      #     disk_ids: ["DiskId"], # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_working_storage(params = {}, options = {})
        req = build_request(:add_working_storage, params)
        req.send_request(options)
      end

      # Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
      # after the archiving process is initiated.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, String] :tape_arn
      #   The Amazon Resource Name (ARN) of the virtual tape you want to cancel
      #   archiving for.
      # @return [Types::CancelArchivalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CancelArchivalOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_archival({
      #     gateway_arn: "GatewayARN", # required
      #     tape_arn: "TapeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def cancel_archival(params = {}, options = {})
        req = build_request(:cancel_archival, params)
        req.send_request(options)
      end

      # Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
      # to a gateway after the retrieval process is initiated. The virtual
      # tape is returned to the VTS.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, String] :tape_arn
      #   The Amazon Resource Name (ARN) of the virtual tape you want to cancel
      #   retrieval for.
      # @return [Types::CancelRetrievalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CancelRetrievalOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_retrieval({
      #     gateway_arn: "GatewayARN", # required
      #     tape_arn: "TapeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def cancel_retrieval(params = {}, options = {})
        req = build_request(:cancel_retrieval, params)
        req.send_request(options)
      end

      # Creates a cached volume on a specified cached gateway. This operation
      # is supported only for the gateway-cached volume architecture.
      #
      # <note markdown="1">Cache storage must be allocated to the gateway before you can create a
      # cached volume. Use the AddCache operation to add cache storage to a
      # gateway.
      #
      #  </note>
      #
      # In the request, you must specify the gateway, size of the volume in
      # bytes, the iSCSI target name, an IP address on which to expose the
      # target, and a unique client token. In response, AWS Storage Gateway
      # creates the volume and returns information about it such as the volume
      # Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
      # initiators can use to connect to the volume target.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, Integer] :volume_size_in_bytes
      # @option params [String] :snapshot_id
      # @option params [required, String] :target_name
      # @option params [required, String] :network_interface_id
      # @option params [required, String] :client_token
      # @return [Types::CreateCachediSCSIVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateCachediSCSIVolumeOutput#volume_arn #VolumeARN} => String
      #   * {Types::CreateCachediSCSIVolumeOutput#target_arn #TargetARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_cached_iscsi_volume({
      #     gateway_arn: "GatewayARN", # required
      #     volume_size_in_bytes: 1, # required
      #     snapshot_id: "SnapshotId",
      #     target_name: "TargetName", # required
      #     network_interface_id: "NetworkInterfaceId", # required
      #     client_token: "ClientToken", # required
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      #   resp.target_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_cached_iscsi_volume(params = {}, options = {})
        req = build_request(:create_cached_iscsi_volume, params)
        req.send_request(options)
      end

      # Initiates a snapshot of a volume.
      #
      # AWS Storage Gateway provides the ability to back up point-in-time
      # snapshots of your data to Amazon Simple Storage (S3) for durable
      # off-site recovery, as well as import the data to an Amazon Elastic
      # Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You
      # can take snapshots of your gateway volume on a scheduled or ad-hoc
      # basis. This API enables you to take ad-hoc snapshot. For more
      # information, see [Working With Snapshots in the AWS Storage Gateway
      # Console][1].
      #
      # In the CreateSnapshot request you identify the volume by providing its
      # Amazon Resource Name (ARN). You must also provide description for the
      # snapshot. When AWS Storage Gateway takes the snapshot of specified
      # volume, the snapshot and description appears in the AWS Storage
      # Gateway Console. In response, AWS Storage Gateway returns you a
      # snapshot ID. You can use this snapshot ID to check the snapshot
      # progress or later use it when you want to create a volume from a
      # snapshot.
      #
      # <note markdown="1">To list or delete a snapshot, you must use the Amazon EC2 API. For
      # more information, see DescribeSnapshots or DeleteSnapshot in the [EC2
      # API reference][2].
      #
      #  </note>
      #
      # <important markdown="1"> Volume and snapshot IDs are changing to a longer length ID format. For
      # more information, see the important note on the [Welcome][3] page.
      #
      #  </important>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html
      # [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html
      # [3]: http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html
      # @option params [required, String] :volume_arn
      #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
      #   operation to return a list of gateway volumes.
      # @option params [required, String] :snapshot_description
      #   Textual description of the snapshot that appears in the Amazon EC2
      #   console, Elastic Block Store snapshots panel in the **Description**
      #   field, and in the AWS Storage Gateway snapshot **Details** pane,
      #   **Description** field
      # @return [Types::CreateSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateSnapshotOutput#volume_arn #VolumeARN} => String
      #   * {Types::CreateSnapshotOutput#snapshot_id #SnapshotId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_snapshot({
      #     volume_arn: "VolumeARN", # required
      #     snapshot_description: "SnapshotDescription", # required
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      #   resp.snapshot_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_snapshot(params = {}, options = {})
        req = build_request(:create_snapshot, params)
        req.send_request(options)
      end

      # Initiates a snapshot of a gateway from a volume recovery point. This
      # operation is supported only for the gateway-cached volume
      # architecture.
      #
      # A volume recovery point is a point in time at which all data of the
      # volume is consistent and from which you can create a snapshot. To get
      # a list of volume recovery point for gateway-cached volumes, use
      # ListVolumeRecoveryPoints.
      #
      # In the `CreateSnapshotFromVolumeRecoveryPoint` request, you identify
      # the volume by providing its Amazon Resource Name (ARN). You must also
      # provide a description for the snapshot. When AWS Storage Gateway takes
      # a snapshot of the specified volume, the snapshot and its description
      # appear in the AWS Storage Gateway console. In response, AWS Storage
      # Gateway returns you a snapshot ID. You can use this snapshot ID to
      # check the snapshot progress or later use it when you want to create a
      # volume from a snapshot.
      #
      # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. For
      # more information, in *Amazon Elastic Compute Cloud API Reference*.
      #
      #  </note>
      # @option params [required, String] :volume_arn
      # @option params [required, String] :snapshot_description
      # @return [Types::CreateSnapshotFromVolumeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#snapshot_id #SnapshotId} => String
      #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#volume_arn #VolumeARN} => String
      #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#volume_recovery_point_time #VolumeRecoveryPointTime} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_snapshot_from_volume_recovery_point({
      #     volume_arn: "VolumeARN", # required
      #     snapshot_description: "SnapshotDescription", # required
      #   })
      #
      # @example Response structure
      #   resp.snapshot_id #=> String
      #   resp.volume_arn #=> String
      #   resp.volume_recovery_point_time #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_snapshot_from_volume_recovery_point(params = {}, options = {})
        req = build_request(:create_snapshot_from_volume_recovery_point, params)
        req.send_request(options)
      end

      # Creates a volume on a specified gateway. This operation is supported
      # only for the gateway-stored volume architecture.
      #
      # The size of the volume to create is inferred from the disk size. You
      # can choose to preserve existing data on the disk, create volume from
      # an existing snapshot, or create an empty volume. If you choose to
      # create an empty gateway volume, then any existing data on the disk is
      # erased.
      #
      # In the request you must specify the gateway and the disk information
      # on which you are creating the volume. In response, AWS Storage Gateway
      # creates the volume and returns volume information such as the volume
      # Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
      # initiators can use to connect to the volume target.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, String] :disk_id
      #   The unique identifier for the gateway local disk that is configured as
      #   a stored volume. Use [ListLocalDisks][1] to list disk IDs for a
      #   gateway.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html
      # @option params [String] :snapshot_id
      #   The snapshot ID (e.g. \"snap-1122aabb\") of the snapshot to restore as
      #   the new stored volume. Specify this field if you want to create the
      #   iSCSI storage volume from a snapshot otherwise do not include this
      #   field. To list snapshots for your account use [DescribeSnapshots][1]
      #   in the *Amazon Elastic Compute Cloud API Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
      # @option params [required, Boolean] :preserve_existing_data
      #   Specify this field as true if you want to preserve the data on the
      #   local disk. Otherwise, specifying this field as false creates an empty
      #   volume.
      #
      #   Valid Values: true, false
      # @option params [required, String] :target_name
      #   The name of the iSCSI target used by initiators to connect to the
      #   target and as a suffix for the target ARN. For example, specifying
      #   `TargetName` as *myvolume* results in the target ARN of
      #   arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume.
      #   The target name must be unique across all volumes of a gateway.
      # @option params [required, String] :network_interface_id
      #   The network interface of the gateway on which to expose the iSCSI
      #   target. Only IPv4 addresses are accepted. Use
      #   DescribeGatewayInformation to get a list of the network interfaces
      #   available on a gateway.
      #
      #   Valid Values: A valid IP address.
      # @return [Types::CreateStorediSCSIVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateStorediSCSIVolumeOutput#volume_arn #VolumeARN} => String
      #   * {Types::CreateStorediSCSIVolumeOutput#volume_size_in_bytes #VolumeSizeInBytes} => Integer
      #   * {Types::CreateStorediSCSIVolumeOutput#target_arn #TargetARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_stored_iscsi_volume({
      #     gateway_arn: "GatewayARN", # required
      #     disk_id: "DiskId", # required
      #     snapshot_id: "SnapshotId",
      #     preserve_existing_data: false, # required
      #     target_name: "TargetName", # required
      #     network_interface_id: "NetworkInterfaceId", # required
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      #   resp.volume_size_in_bytes #=> Integer
      #   resp.target_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_stored_iscsi_volume(params = {}, options = {})
        req = build_request(:create_stored_iscsi_volume, params)
        req.send_request(options)
      end

      # Creates a virtual tape by using your own barcode. You write data to
      # the virtual tape and then archive the tape.
      #
      # <note markdown="1">Cache storage must be allocated to the gateway before you can create a
      # virtual tape. Use the AddCache operation to add cache storage to a
      # gateway.
      #
      #  </note>
      # @option params [required, String] :gateway_arn
      #   The unique Amazon Resource Name (ARN) that represents the gateway to
      #   associate the virtual tape with. Use the ListGateways operation to
      #   return a list of gateways for your account and region.
      # @option params [required, Integer] :tape_size_in_bytes
      #   The size, in bytes, of the virtual tape that you want to create.
      #
      #   <note markdown="1">The size must be aligned by gigabyte (1024\*1024\*1024 byte).
      #
      #    </note>
      # @option params [required, String] :tape_barcode
      #   The barcode that you want to assign to the tape.
      # @return [Types::CreateTapeWithBarcodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTapeWithBarcodeOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_tape_with_barcode({
      #     gateway_arn: "GatewayARN", # required
      #     tape_size_in_bytes: 1, # required
      #     tape_barcode: "TapeBarcode", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_tape_with_barcode(params = {}, options = {})
        req = build_request(:create_tape_with_barcode, params)
        req.send_request(options)
      end

      # Creates one or more virtual tapes. You write data to the virtual tapes
      # and then archive the tapes.
      #
      # <note markdown="1">Cache storage must be allocated to the gateway before you can create
      # virtual tapes. Use the AddCache operation to add cache storage to a
      # gateway.
      #
      #  </note>
      # @option params [required, String] :gateway_arn
      #   The unique Amazon Resource Name (ARN) that represents the gateway to
      #   associate the virtual tapes with. Use the ListGateways operation to
      #   return a list of gateways for your account and region.
      # @option params [required, Integer] :tape_size_in_bytes
      #   The size, in bytes, of the virtual tapes that you want to create.
      #
      #   <note markdown="1">The size must be aligned by gigabyte (1024\*1024\*1024 byte).
      #
      #    </note>
      # @option params [required, String] :client_token
      #   A unique identifier that you use to retry a request. If you retry a
      #   request, use the same `ClientToken` you specified in the initial
      #   request.
      #
      #   <note markdown="1">Using the same `ClientToken` prevents creating the tape multiple
      #   times.
      #
      #    </note>
      # @option params [required, Integer] :num_tapes_to_create
      #   The number of virtual tapes that you want to create.
      # @option params [required, String] :tape_barcode_prefix
      #   A prefix that you append to the barcode of the virtual tape you are
      #   creating. This prefix makes the barcode unique.
      #
      #   <note markdown="1">The prefix must be 1 to 4 characters in length and must be one of the
      #   uppercase letters from A to Z.
      #
      #    </note>
      # @return [Types::CreateTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTapesOutput#tape_arns #TapeARNs} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_tapes({
      #     gateway_arn: "GatewayARN", # required
      #     tape_size_in_bytes: 1, # required
      #     client_token: "ClientToken", # required
      #     num_tapes_to_create: 1, # required
      #     tape_barcode_prefix: "TapeBarcodePrefix", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arns #=> Array
      #   resp.tape_arns[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_tapes(params = {}, options = {})
        req = build_request(:create_tapes, params)
        req.send_request(options)
      end

      # Deletes the bandwidth rate limits of a gateway. You can delete either
      # the upload and download bandwidth rate limit, or you can delete both.
      # If you delete only one of the limits, the other limit remains
      # unchanged. To specify which gateway to work with, use the Amazon
      # Resource Name (ARN) of the gateway in your request.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, String] :bandwidth_type
      # @return [Types::DeleteBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteBandwidthRateLimitOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_bandwidth_rate_limit({
      #     gateway_arn: "GatewayARN", # required
      #     bandwidth_type: "BandwidthType", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_bandwidth_rate_limit(params = {}, options = {})
        req = build_request(:delete_bandwidth_rate_limit, params)
        req.send_request(options)
      end

      # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
      # for a specified iSCSI target and initiator pair.
      # @option params [required, String] :target_arn
      #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
      #   DescribeStorediSCSIVolumes operation to return to retrieve the
      #   TargetARN for specified VolumeARN.
      # @option params [required, String] :initiator_name
      #   The iSCSI initiator that connects to the target.
      # @return [Types::DeleteChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteChapCredentialsOutput#target_arn #TargetARN} => String
      #   * {Types::DeleteChapCredentialsOutput#initiator_name #InitiatorName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_chap_credentials({
      #     target_arn: "TargetARN", # required
      #     initiator_name: "IqnName", # required
      #   })
      #
      # @example Response structure
      #   resp.target_arn #=> String
      #   resp.initiator_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_chap_credentials(params = {}, options = {})
        req = build_request(:delete_chap_credentials, params)
        req.send_request(options)
      end

      # Deletes a gateway. To specify which gateway to delete, use the Amazon
      # Resource Name (ARN) of the gateway in your request. The operation
      # deletes the gateway; however, it does not delete the gateway virtual
      # machine (VM) from your host computer.
      #
      # After you delete a gateway, you cannot reactivate it. Completed
      # snapshots of the gateway volumes are not deleted upon deleting the
      # gateway, however, pending snapshots will not complete. After you
      # delete a gateway, your next step is to remove it from your
      # environment.
      #
      # <important markdown="1"> You no longer pay software charges after the gateway is deleted;
      # however, your existing Amazon EBS snapshots persist and you will
      # continue to be billed for these snapshots. You can choose to remove
      # all remaining Amazon EBS snapshots by canceling your Amazon EC2
      # subscription.  If you prefer not to cancel your Amazon EC2
      # subscription, you can delete your snapshots using the Amazon EC2
      # console. For more information, see the [ AWS Storage Gateway Detail
      # Page][1].
      #
      #  </important>
      #
      #
      #
      # [1]: http://aws.amazon.com/storagegateway
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DeleteGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteGatewayOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_gateway({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_gateway(params = {}, options = {})
        req = build_request(:delete_gateway, params)
        req.send_request(options)
      end

      # Deletes a snapshot of a volume.
      #
      # You can take snapshots of your gateway volumes on a scheduled or ad
      # hoc basis. This API action enables you to delete a snapshot schedule
      # for a volume. For more information, see [Working with Snapshots][1].
      # In the `DeleteSnapshotSchedule` request, you identify the volume by
      # providing its Amazon Resource Name (ARN).
      #
      # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. in
      # *Amazon Elastic Compute Cloud API Reference*.
      #
      #  </note>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html
      # @option params [required, String] :volume_arn
      # @return [Types::DeleteSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteSnapshotScheduleOutput#volume_arn #VolumeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_snapshot_schedule({
      #     volume_arn: "VolumeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_snapshot_schedule(params = {}, options = {})
        req = build_request(:delete_snapshot_schedule, params)
        req.send_request(options)
      end

      # Deletes the specified virtual tape.
      # @option params [required, String] :gateway_arn
      #   The unique Amazon Resource Name (ARN) of the gateway that the virtual
      #   tape to delete is associated with. Use the ListGateways operation to
      #   return a list of gateways for your account and region.
      # @option params [required, String] :tape_arn
      #   The Amazon Resource Name (ARN) of the virtual tape to delete.
      # @return [Types::DeleteTapeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteTapeOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_tape({
      #     gateway_arn: "GatewayARN", # required
      #     tape_arn: "TapeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_tape(params = {}, options = {})
        req = build_request(:delete_tape, params)
        req.send_request(options)
      end

      # Deletes the specified virtual tape from the virtual tape shelf (VTS).
      # @option params [required, String] :tape_arn
      #   The Amazon Resource Name (ARN) of the virtual tape to delete from the
      #   virtual tape shelf (VTS).
      # @return [Types::DeleteTapeArchiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteTapeArchiveOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_tape_archive({
      #     tape_arn: "TapeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_tape_archive(params = {}, options = {})
        req = build_request(:delete_tape_archive, params)
        req.send_request(options)
      end

      # Deletes the specified gateway volume that you previously created using
      # the CreateCachediSCSIVolume or CreateStorediSCSIVolume API. For
      # gateway-stored volumes, the local disk that was configured as the
      # storage volume is not deleted. You can reuse the local disk to create
      # another storage volume.
      #
      # Before you delete a gateway volume, make sure there are no iSCSI
      # connections to the volume you are deleting. You should also make sure
      # there is no snapshot in progress. You can use the Amazon Elastic
      # Compute Cloud (Amazon EC2) API to query snapshots on the volume you
      # are deleting and check the snapshot status. For more information, go
      # to [DescribeSnapshots][1] in the *Amazon Elastic Compute Cloud API
      # Reference*.
      #
      # In the request, you must provide the Amazon Resource Name (ARN) of the
      # storage volume you want to delete.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
      # @option params [required, String] :volume_arn
      #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
      #   operation to return a list of gateway volumes.
      # @return [Types::DeleteVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteVolumeOutput#volume_arn #VolumeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_volume({
      #     volume_arn: "VolumeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_volume(params = {}, options = {})
        req = build_request(:delete_volume, params)
        req.send_request(options)
      end

      # Returns the bandwidth rate limits of a gateway. By default, these
      # limits are not set, which means no bandwidth rate limiting is in
      # effect.
      #
      # This operation only returns a value for a bandwidth rate limit only if
      # the limit is set. If no limits are set for the gateway, then this
      # operation returns only the gateway ARN in the response body. To
      # specify which gateway to describe, use the Amazon Resource Name (ARN)
      # of the gateway in your request.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DescribeBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeBandwidthRateLimitOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeBandwidthRateLimitOutput#average_upload_rate_limit_in_bits_per_sec #AverageUploadRateLimitInBitsPerSec} => Integer
      #   * {Types::DescribeBandwidthRateLimitOutput#average_download_rate_limit_in_bits_per_sec #AverageDownloadRateLimitInBitsPerSec} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_bandwidth_rate_limit({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.average_upload_rate_limit_in_bits_per_sec #=> Integer
      #   resp.average_download_rate_limit_in_bits_per_sec #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_bandwidth_rate_limit(params = {}, options = {})
        req = build_request(:describe_bandwidth_rate_limit, params)
        req.send_request(options)
      end

      # Returns information about the cache of a gateway. This operation is
      # supported only for the gateway-cached volume architecture.
      #
      # The response includes disk IDs that are configured as cache, and it
      # includes the amount of cache allocated and used.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DescribeCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCacheOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeCacheOutput#disk_ids #DiskIds} => Array&lt;String&gt;
      #   * {Types::DescribeCacheOutput#cache_allocated_in_bytes #CacheAllocatedInBytes} => Integer
      #   * {Types::DescribeCacheOutput#cache_used_percentage #CacheUsedPercentage} => Float
      #   * {Types::DescribeCacheOutput#cache_dirty_percentage #CacheDirtyPercentage} => Float
      #   * {Types::DescribeCacheOutput#cache_hit_percentage #CacheHitPercentage} => Float
      #   * {Types::DescribeCacheOutput#cache_miss_percentage #CacheMissPercentage} => Float
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cache({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.disk_ids #=> Array
      #   resp.disk_ids[0] #=> String
      #   resp.cache_allocated_in_bytes #=> Integer
      #   resp.cache_used_percentage #=> Float
      #   resp.cache_dirty_percentage #=> Float
      #   resp.cache_hit_percentage #=> Float
      #   resp.cache_miss_percentage #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cache(params = {}, options = {})
        req = build_request(:describe_cache, params)
        req.send_request(options)
      end

      # Returns a description of the gateway volumes specified in the request.
      # This operation is supported only for the gateway-cached volume
      # architecture.
      #
      # The list of gateway volumes in the request must be from one gateway.
      # In the response Amazon Storage Gateway returns volume information
      # sorted by volume Amazon Resource Name (ARN).
      # @option params [required, Array<String>] :volume_arns
      # @return [Types::DescribeCachediSCSIVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCachediSCSIVolumesOutput#cached_iscsi_volumes #CachediSCSIVolumes} => Array&lt;Types::CachediSCSIVolume&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cached_iscsi_volumes({
      #     volume_arns: ["VolumeARN"], # required
      #   })
      #
      # @example Response structure
      #   resp.cached_iscsi_volumes #=> Array
      #   resp.cached_iscsi_volumes[0].volume_arn #=> String
      #   resp.cached_iscsi_volumes[0].volume_id #=> String
      #   resp.cached_iscsi_volumes[0].volume_type #=> String
      #   resp.cached_iscsi_volumes[0].volume_status #=> String
      #   resp.cached_iscsi_volumes[0].volume_size_in_bytes #=> Integer
      #   resp.cached_iscsi_volumes[0].volume_progress #=> Float
      #   resp.cached_iscsi_volumes[0].source_snapshot_id #=> String
      #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.target_arn #=> String
      #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.network_interface_id #=> String
      #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.network_interface_port #=> Integer
      #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.lun_number #=> Integer
      #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.chap_enabled #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_cached_iscsi_volumes(params = {}, options = {})
        req = build_request(:describe_cached_iscsi_volumes, params)
        req.send_request(options)
      end

      # Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
      # credentials information for a specified iSCSI target, one for each
      # target-initiator pair.
      # @option params [required, String] :target_arn
      #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
      #   DescribeStorediSCSIVolumes operation to return to retrieve the
      #   TargetARN for specified VolumeARN.
      # @return [Types::DescribeChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeChapCredentialsOutput#chap_credentials #ChapCredentials} => Array&lt;Types::ChapInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_chap_credentials({
      #     target_arn: "TargetARN", # required
      #   })
      #
      # @example Response structure
      #   resp.chap_credentials #=> Array
      #   resp.chap_credentials[0].target_arn #=> String
      #   resp.chap_credentials[0].secret_to_authenticate_initiator #=> String
      #   resp.chap_credentials[0].initiator_name #=> String
      #   resp.chap_credentials[0].secret_to_authenticate_target #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_chap_credentials(params = {}, options = {})
        req = build_request(:describe_chap_credentials, params)
        req.send_request(options)
      end

      # Returns metadata about a gateway such as its name, network interfaces,
      # configured time zone, and the state (whether the gateway is running or
      # not). To specify which gateway to describe, use the Amazon Resource
      # Name (ARN) of the gateway in your request.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DescribeGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeGatewayInformationOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeGatewayInformationOutput#gateway_id #GatewayId} => String
      #   * {Types::DescribeGatewayInformationOutput#gateway_name #GatewayName} => String
      #   * {Types::DescribeGatewayInformationOutput#gateway_timezone #GatewayTimezone} => String
      #   * {Types::DescribeGatewayInformationOutput#gateway_state #GatewayState} => String
      #   * {Types::DescribeGatewayInformationOutput#gateway_network_interfaces #GatewayNetworkInterfaces} => Array&lt;Types::NetworkInterface&gt;
      #   * {Types::DescribeGatewayInformationOutput#gateway_type #GatewayType} => String
      #   * {Types::DescribeGatewayInformationOutput#next_update_availability_date #NextUpdateAvailabilityDate} => String
      #   * {Types::DescribeGatewayInformationOutput#last_software_update #LastSoftwareUpdate} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_gateway_information({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.gateway_id #=> String
      #   resp.gateway_name #=> String
      #   resp.gateway_timezone #=> String
      #   resp.gateway_state #=> String
      #   resp.gateway_network_interfaces #=> Array
      #   resp.gateway_network_interfaces[0].ipv_4_address #=> String
      #   resp.gateway_network_interfaces[0].mac_address #=> String
      #   resp.gateway_network_interfaces[0].ipv_6_address #=> String
      #   resp.gateway_type #=> String
      #   resp.next_update_availability_date #=> String
      #   resp.last_software_update #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_gateway_information(params = {}, options = {})
        req = build_request(:describe_gateway_information, params)
        req.send_request(options)
      end

      # Returns your gateway\'s weekly maintenance start time including the
      # day and time of the week. Note that values are in terms of the
      # gateway\'s time zone.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DescribeMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeMaintenanceStartTimeOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeMaintenanceStartTimeOutput#hour_of_day #HourOfDay} => Integer
      #   * {Types::DescribeMaintenanceStartTimeOutput#minute_of_hour #MinuteOfHour} => Integer
      #   * {Types::DescribeMaintenanceStartTimeOutput#day_of_week #DayOfWeek} => Integer
      #   * {Types::DescribeMaintenanceStartTimeOutput#timezone #Timezone} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_maintenance_start_time({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.hour_of_day #=> Integer
      #   resp.minute_of_hour #=> Integer
      #   resp.day_of_week #=> Integer
      #   resp.timezone #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_maintenance_start_time(params = {}, options = {})
        req = build_request(:describe_maintenance_start_time, params)
        req.send_request(options)
      end

      # Describes the snapshot schedule for the specified gateway volume. The
      # snapshot schedule information includes intervals at which snapshots
      # are automatically initiated on the volume.
      # @option params [required, String] :volume_arn
      #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
      #   operation to return a list of gateway volumes.
      # @return [Types::DescribeSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeSnapshotScheduleOutput#volume_arn #VolumeARN} => String
      #   * {Types::DescribeSnapshotScheduleOutput#start_at #StartAt} => Integer
      #   * {Types::DescribeSnapshotScheduleOutput#recurrence_in_hours #RecurrenceInHours} => Integer
      #   * {Types::DescribeSnapshotScheduleOutput#description #Description} => String
      #   * {Types::DescribeSnapshotScheduleOutput#timezone #Timezone} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_snapshot_schedule({
      #     volume_arn: "VolumeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      #   resp.start_at #=> Integer
      #   resp.recurrence_in_hours #=> Integer
      #   resp.description #=> String
      #   resp.timezone #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_snapshot_schedule(params = {}, options = {})
        req = build_request(:describe_snapshot_schedule, params)
        req.send_request(options)
      end

      # Returns the description of the gateway volumes specified in the
      # request. The list of gateway volumes in the request must be from one
      # gateway. In the response Amazon Storage Gateway returns volume
      # information sorted by volume ARNs.
      # @option params [required, Array<String>] :volume_arns
      #   An array of strings where each string represents the Amazon Resource
      #   Name (ARN) of a stored volume. All of the specified stored volumes
      #   must from the same gateway. Use ListVolumes to get volume ARNs for a
      #   gateway.
      # @return [Types::DescribeStorediSCSIVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeStorediSCSIVolumesOutput#stored_iscsi_volumes #StorediSCSIVolumes} => Array&lt;Types::StorediSCSIVolume&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_stored_iscsi_volumes({
      #     volume_arns: ["VolumeARN"], # required
      #   })
      #
      # @example Response structure
      #   resp.stored_iscsi_volumes #=> Array
      #   resp.stored_iscsi_volumes[0].volume_arn #=> String
      #   resp.stored_iscsi_volumes[0].volume_id #=> String
      #   resp.stored_iscsi_volumes[0].volume_type #=> String
      #   resp.stored_iscsi_volumes[0].volume_status #=> String
      #   resp.stored_iscsi_volumes[0].volume_size_in_bytes #=> Integer
      #   resp.stored_iscsi_volumes[0].volume_progress #=> Float
      #   resp.stored_iscsi_volumes[0].volume_disk_id #=> String
      #   resp.stored_iscsi_volumes[0].source_snapshot_id #=> String
      #   resp.stored_iscsi_volumes[0].preserved_existing_data #=> Boolean
      #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.target_arn #=> String
      #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.network_interface_id #=> String
      #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.network_interface_port #=> Integer
      #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.lun_number #=> Integer
      #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.chap_enabled #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_stored_iscsi_volumes(params = {}, options = {})
        req = build_request(:describe_stored_iscsi_volumes, params)
        req.send_request(options)
      end

      # Returns a description of specified virtual tapes in the virtual tape
      # shelf (VTS).
      #
      # If a specific `TapeARN` is not specified, AWS Storage Gateway returns
      # a description of all virtual tapes found in the VTS associated with
      # your account.
      # @option params [Array<String>] :tape_arns
      #   Specifies one or more unique Amazon Resource Names (ARNs) that
      #   represent the virtual tapes you want to describe.
      # @option params [String] :marker
      #   An opaque string that indicates the position at which to begin
      #   describing virtual tapes.
      # @option params [Integer] :limit
      #   Specifies that the number of virtual tapes descried be limited to the
      #   specified number.
      # @return [Types::DescribeTapeArchivesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTapeArchivesOutput#tape_archives #TapeArchives} => Array&lt;Types::TapeArchive&gt;
      #   * {Types::DescribeTapeArchivesOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_tape_archives({
      #     tape_arns: ["TapeARN"],
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.tape_archives #=> Array
      #   resp.tape_archives[0].tape_arn #=> String
      #   resp.tape_archives[0].tape_barcode #=> String
      #   resp.tape_archives[0].tape_size_in_bytes #=> Integer
      #   resp.tape_archives[0].completion_time #=> Time
      #   resp.tape_archives[0].retrieved_to #=> String
      #   resp.tape_archives[0].tape_status #=> String
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_tape_archives(params = {}, options = {})
        req = build_request(:describe_tape_archives, params)
        req.send_request(options)
      end

      # Returns a list of virtual tape recovery points that are available for
      # the specified gateway-VTL.
      #
      # A recovery point is a point-in-time view of a virtual tape at which
      # all the data on the virtual tape is consistent. If your gateway
      # crashes, virtual tapes that have recovery points can be recovered to a
      # new gateway.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [String] :marker
      #   An opaque string that indicates the position at which to begin
      #   describing the virtual tape recovery points.
      # @option params [Integer] :limit
      #   Specifies that the number of virtual tape recovery points that are
      #   described be limited to the specified number.
      # @return [Types::DescribeTapeRecoveryPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTapeRecoveryPointsOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeTapeRecoveryPointsOutput#tape_recovery_point_infos #TapeRecoveryPointInfos} => Array&lt;Types::TapeRecoveryPointInfo&gt;
      #   * {Types::DescribeTapeRecoveryPointsOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_tape_recovery_points({
      #     gateway_arn: "GatewayARN", # required
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.tape_recovery_point_infos #=> Array
      #   resp.tape_recovery_point_infos[0].tape_arn #=> String
      #   resp.tape_recovery_point_infos[0].tape_recovery_point_time #=> Time
      #   resp.tape_recovery_point_infos[0].tape_size_in_bytes #=> Integer
      #   resp.tape_recovery_point_infos[0].tape_status #=> String
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_tape_recovery_points(params = {}, options = {})
        req = build_request(:describe_tape_recovery_points, params)
        req.send_request(options)
      end

      # Returns a description of the specified Amazon Resource Name (ARN) of
      # virtual tapes. If a `TapeARN` is not specified, returns a description
      # of all virtual tapes associated with the specified gateway.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [Array<String>] :tape_arns
      #   Specifies one or more unique Amazon Resource Names (ARNs) that
      #   represent the virtual tapes you want to describe. If this parameter is
      #   not specified, AWS Storage Gateway returns a description of all
      #   virtual tapes associated with the specified gateway.
      # @option params [String] :marker
      #   A marker value, obtained in a previous call to `DescribeTapes`. This
      #   marker indicates which page of results to retrieve.
      #
      #   If not specified, the first page of results is retrieved.
      # @option params [Integer] :limit
      #   Specifies that the number of virtual tapes described be limited to the
      #   specified number.
      #
      #   <note markdown="1">Amazon Web Services may impose its own limit, if this field is not
      #   set.
      #
      #    </note>
      # @return [Types::DescribeTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTapesOutput#tapes #Tapes} => Array&lt;Types::Tape&gt;
      #   * {Types::DescribeTapesOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_tapes({
      #     gateway_arn: "GatewayARN", # required
      #     tape_arns: ["TapeARN"],
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.tapes #=> Array
      #   resp.tapes[0].tape_arn #=> String
      #   resp.tapes[0].tape_barcode #=> String
      #   resp.tapes[0].tape_size_in_bytes #=> Integer
      #   resp.tapes[0].tape_status #=> String
      #   resp.tapes[0].vtl_device #=> String
      #   resp.tapes[0].progress #=> Float
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_tapes(params = {}, options = {})
        req = build_request(:describe_tapes, params)
        req.send_request(options)
      end

      # Returns information about the upload buffer of a gateway. This
      # operation is supported for both the gateway-stored and gateway-cached
      # volume architectures.
      #
      # The response includes disk IDs that are configured as upload buffer
      # space, and it includes the amount of upload buffer space allocated and
      # used.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DescribeUploadBufferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeUploadBufferOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeUploadBufferOutput#disk_ids #DiskIds} => Array&lt;String&gt;
      #   * {Types::DescribeUploadBufferOutput#upload_buffer_used_in_bytes #UploadBufferUsedInBytes} => Integer
      #   * {Types::DescribeUploadBufferOutput#upload_buffer_allocated_in_bytes #UploadBufferAllocatedInBytes} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_upload_buffer({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.disk_ids #=> Array
      #   resp.disk_ids[0] #=> String
      #   resp.upload_buffer_used_in_bytes #=> Integer
      #   resp.upload_buffer_allocated_in_bytes #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_upload_buffer(params = {}, options = {})
        req = build_request(:describe_upload_buffer, params)
        req.send_request(options)
      end

      # Returns a description of virtual tape library (VTL) devices for the
      # specified gateway. In the response, AWS Storage Gateway returns VTL
      # device information.
      #
      # The list of VTL devices must be from one gateway.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [Array<String>] :vtl_device_arns
      #   An array of strings, where each string represents the Amazon Resource
      #   Name (ARN) of a VTL device.
      #
      #   <note markdown="1">All of the specified VTL devices must be from the same gateway. If no
      #   VTL devices are specified, the result will contain all devices on the
      #   specified gateway.
      #
      #    </note>
      # @option params [String] :marker
      #   An opaque string that indicates the position at which to begin
      #   describing the VTL devices.
      # @option params [Integer] :limit
      #   Specifies that the number of VTL devices described be limited to the
      #   specified number.
      # @return [Types::DescribeVTLDevicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeVTLDevicesOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeVTLDevicesOutput#vtl_devices #VTLDevices} => Array&lt;Types::VTLDevice&gt;
      #   * {Types::DescribeVTLDevicesOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_vtl_devices({
      #     gateway_arn: "GatewayARN", # required
      #     vtl_device_arns: ["VTLDeviceARN"],
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.vtl_devices #=> Array
      #   resp.vtl_devices[0].vtl_device_arn #=> String
      #   resp.vtl_devices[0].vtl_device_type #=> String
      #   resp.vtl_devices[0].vtl_device_vendor #=> String
      #   resp.vtl_devices[0].vtl_device_product_identifier #=> String
      #   resp.vtl_devices[0].device_iscsi_attributes.target_arn #=> String
      #   resp.vtl_devices[0].device_iscsi_attributes.network_interface_id #=> String
      #   resp.vtl_devices[0].device_iscsi_attributes.network_interface_port #=> Integer
      #   resp.vtl_devices[0].device_iscsi_attributes.chap_enabled #=> Boolean
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_vtl_devices(params = {}, options = {})
        req = build_request(:describe_vtl_devices, params)
        req.send_request(options)
      end

      # Returns information about the working storage of a gateway. This
      # operation is supported only for the gateway-stored volume
      # architecture. This operation is deprecated in cached-volumes API
      # version (20120630). Use DescribeUploadBuffer instead.
      #
      # <note markdown="1"> Working storage is also referred to as upload buffer. You can also use
      # the DescribeUploadBuffer operation to add upload buffer to a
      # stored-volume gateway.
      #
      #  </note>
      #
      # The response includes disk IDs that are configured as working storage,
      # and it includes the amount of working storage allocated and used.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DescribeWorkingStorageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeWorkingStorageOutput#gateway_arn #GatewayARN} => String
      #   * {Types::DescribeWorkingStorageOutput#disk_ids #DiskIds} => Array&lt;String&gt;
      #   * {Types::DescribeWorkingStorageOutput#working_storage_used_in_bytes #WorkingStorageUsedInBytes} => Integer
      #   * {Types::DescribeWorkingStorageOutput#working_storage_allocated_in_bytes #WorkingStorageAllocatedInBytes} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_working_storage({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.disk_ids #=> Array
      #   resp.disk_ids[0] #=> String
      #   resp.working_storage_used_in_bytes #=> Integer
      #   resp.working_storage_allocated_in_bytes #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_working_storage(params = {}, options = {})
        req = build_request(:describe_working_storage, params)
        req.send_request(options)
      end

      # Disables a gateway when the gateway is no longer functioning. For
      # example, if your gateway VM is damaged, you can disable the gateway so
      # you can recover virtual tapes.
      #
      # Use this operation for a gateway-VTL that is not reachable or not
      # functioning.
      #
      # <important markdown="1">Once a gateway is disabled it cannot be enabled.
      #
      #  </important>
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::DisableGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DisableGatewayOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_gateway({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_gateway(params = {}, options = {})
        req = build_request(:disable_gateway, params)
        req.send_request(options)
      end

      # Lists gateways owned by an AWS account in a region specified in the
      # request. The returned list is ordered by gateway Amazon Resource Name
      # (ARN).
      #
      # By default, the operation returns a maximum of 100 gateways. This
      # operation supports pagination that allows you to optionally reduce the
      # number of gateways returned in a response.
      #
      # If you have more gateways than are returned in a response (that is,
      # the response returns only a truncated list of your gateways), the
      # response contains a marker that you can specify in your next request
      # to fetch the next page of gateways.
      # @option params [String] :marker
      #   An opaque string that indicates the position at which to begin the
      #   returned list of gateways.
      # @option params [Integer] :limit
      #   Specifies that the list of gateways returned be limited to the
      #   specified number of items.
      # @return [Types::ListGatewaysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListGatewaysOutput#gateways #Gateways} => Array&lt;Types::GatewayInfo&gt;
      #   * {Types::ListGatewaysOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_gateways({
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.gateways #=> Array
      #   resp.gateways[0].gateway_id #=> String
      #   resp.gateways[0].gateway_arn #=> String
      #   resp.gateways[0].gateway_type #=> String
      #   resp.gateways[0].gateway_operational_state #=> String
      #   resp.gateways[0].gateway_name #=> String
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_gateways(params = {}, options = {})
        req = build_request(:list_gateways, params)
        req.send_request(options)
      end

      # Returns a list of the gateway\'s local disks. To specify which gateway
      # to describe, you use the Amazon Resource Name (ARN) of the gateway in
      # the body of the request.
      #
      # The request returns a list of all disks, specifying which are
      # configured as working storage, cache storage, or stored volume or not
      # configured at all. The response includes a `DiskStatus` field. This
      # field can have a value of present (the disk is available to use),
      # missing (the disk is no longer connected to the gateway), or mismatch
      # (the disk node is occupied by a disk that has incorrect metadata or
      # the disk content is corrupted).
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::ListLocalDisksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListLocalDisksOutput#gateway_arn #GatewayARN} => String
      #   * {Types::ListLocalDisksOutput#disks #Disks} => Array&lt;Types::Disk&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_local_disks({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.disks #=> Array
      #   resp.disks[0].disk_id #=> String
      #   resp.disks[0].disk_path #=> String
      #   resp.disks[0].disk_node #=> String
      #   resp.disks[0].disk_status #=> String
      #   resp.disks[0].disk_size_in_bytes #=> Integer
      #   resp.disks[0].disk_allocation_type #=> String
      #   resp.disks[0].disk_allocation_resource #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_local_disks(params = {}, options = {})
        req = build_request(:list_local_disks, params)
        req.send_request(options)
      end

      # Lists the tags that have been added to the specified resource.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the resource for which you want to
      #   list tags.
      # @option params [String] :marker
      #   An opaque string that indicates the position at which to begin
      #   returning the list of tags.
      # @option params [Integer] :limit
      #   Specifies that the list of tags returned be limited to the specified
      #   number of items.
      # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceOutput#resource_arn #ResourceARN} => String
      #   * {Types::ListTagsForResourceOutput#marker #Marker} => String
      #   * {Types::ListTagsForResourceOutput#tags #Tags} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_arn: "ResourceARN", # required
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.resource_arn #=> String
      #   resp.marker #=> String
      #   resp.tags #=> Array
      #   resp.tags[0].key #=> String
      #   resp.tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # Lists virtual tapes in your virtual tape library (VTL) and your
      # virtual tape shelf (VTS). You specify the tapes to list by specifying
      # one or more tape Amazon Resource Names (ARNs). If you don\'t specify a
      # tape ARN, the operation lists all virtual tapes in both your VTL and
      # VTS.
      #
      # This operation supports pagination. By default, the operation returns
      # a maximum of up to 100 tapes. You can optionally specify the `Limit`
      # parameter in the body to limit the number of tapes in the response. If
      # the number of tapes returned in the response is truncated, the
      # response includes a `Marker` element that you can use in your
      # subsequent request to retrieve the next set of tapes.
      # @option params [Array<String>] :tape_arns
      #   The Amazon Resource Name (ARN) of each of the tapes you want to list.
      #   If you don\'t specify a tape ARN, the response lists all tapes in both
      #   your VTL and VTS.
      # @option params [String] :marker
      #   A string that indicates the position at which to begin the returned
      #   list of tapes.
      # @option params [Integer] :limit
      #   An optional number limit for the tapes in the list returned by this
      #   call.
      # @return [Types::ListTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTapesOutput#tape_infos #TapeInfos} => Array&lt;Types::TapeInfo&gt;
      #   * {Types::ListTapesOutput#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tapes({
      #     tape_arns: ["TapeARN"],
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.tape_infos #=> Array
      #   resp.tape_infos[0].tape_arn #=> String
      #   resp.tape_infos[0].tape_barcode #=> String
      #   resp.tape_infos[0].tape_size_in_bytes #=> Integer
      #   resp.tape_infos[0].tape_status #=> String
      #   resp.tape_infos[0].gateway_arn #=> String
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tapes(params = {}, options = {})
        req = build_request(:list_tapes, params)
        req.send_request(options)
      end

      # Lists iSCSI initiators that are connected to a volume. You can use
      # this operation to determine whether a volume is being used or not.
      # @option params [required, String] :volume_arn
      #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
      #   operation to return a list of gateway volumes for the gateway.
      # @return [Types::ListVolumeInitiatorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListVolumeInitiatorsOutput#initiators #Initiators} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_volume_initiators({
      #     volume_arn: "VolumeARN", # required
      #   })
      #
      # @example Response structure
      #   resp.initiators #=> Array
      #   resp.initiators[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_volume_initiators(params = {}, options = {})
        req = build_request(:list_volume_initiators, params)
        req.send_request(options)
      end

      # Lists the recovery points for a specified gateway. This operation is
      # supported only for the gateway-cached volume architecture.
      #
      # Each gateway-cached volume has one recovery point. A volume recovery
      # point is a point in time at which all data of the volume is consistent
      # and from which you can create a snapshot. To create a snapshot from a
      # volume recovery point use the CreateSnapshotFromVolumeRecoveryPoint
      # operation.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::ListVolumeRecoveryPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListVolumeRecoveryPointsOutput#gateway_arn #GatewayARN} => String
      #   * {Types::ListVolumeRecoveryPointsOutput#volume_recovery_point_infos #VolumeRecoveryPointInfos} => Array&lt;Types::VolumeRecoveryPointInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_volume_recovery_points({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.volume_recovery_point_infos #=> Array
      #   resp.volume_recovery_point_infos[0].volume_arn #=> String
      #   resp.volume_recovery_point_infos[0].volume_size_in_bytes #=> Integer
      #   resp.volume_recovery_point_infos[0].volume_usage_in_bytes #=> Integer
      #   resp.volume_recovery_point_infos[0].volume_recovery_point_time #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_volume_recovery_points(params = {}, options = {})
        req = build_request(:list_volume_recovery_points, params)
        req.send_request(options)
      end

      # Lists the iSCSI stored volumes of a gateway. Results are sorted by
      # volume ARN. The response includes only the volume ARNs. If you want
      # additional volume information, use the DescribeStorediSCSIVolumes API.
      #
      # The operation supports pagination. By default, the operation returns a
      # maximum of up to 100 volumes. You can optionally specify the `Limit`
      # field in the body to limit the number of volumes in the response. If
      # the number of volumes returned in the response is truncated, the
      # response includes a Marker field. You can use this Marker value in
      # your subsequent request to retrieve the next set of volumes.
      # @option params [String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [String] :marker
      #   A string that indicates the position at which to begin the returned
      #   list of volumes. Obtain the marker from the response of a previous
      #   List iSCSI Volumes request.
      # @option params [Integer] :limit
      #   Specifies that the list of volumes returned be limited to the
      #   specified number of items.
      # @return [Types::ListVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListVolumesOutput#gateway_arn #GatewayARN} => String
      #   * {Types::ListVolumesOutput#marker #Marker} => String
      #   * {Types::ListVolumesOutput#volume_infos #VolumeInfos} => Array&lt;Types::VolumeInfo&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_volumes({
      #     gateway_arn: "GatewayARN",
      #     marker: "Marker",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.marker #=> String
      #   resp.volume_infos #=> Array
      #   resp.volume_infos[0].volume_arn #=> String
      #   resp.volume_infos[0].volume_id #=> String
      #   resp.volume_infos[0].gateway_arn #=> String
      #   resp.volume_infos[0].gateway_id #=> String
      #   resp.volume_infos[0].volume_type #=> String
      #   resp.volume_infos[0].volume_size_in_bytes #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_volumes(params = {}, options = {})
        req = build_request(:list_volumes, params)
        req.send_request(options)
      end

      # Removes one or more tags from the specified resource.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the resource you want to remove the
      #   tags from.
      # @option params [required, Array<String>] :tag_keys
      #   The keys of the tags you want to remove from the specified resource. A
      #   tag is composed of a key/value pair.
      # @return [Types::RemoveTagsFromResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RemoveTagsFromResourceOutput#resource_arn #ResourceARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_resource({
      #     resource_arn: "ResourceARN", # required
      #     tag_keys: ["TagKey"], # required
      #   })
      #
      # @example Response structure
      #   resp.resource_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags_from_resource(params = {}, options = {})
        req = build_request(:remove_tags_from_resource, params)
        req.send_request(options)
      end

      # Resets all cache disks that have encountered a error and makes the
      # disks available for reconfiguration as cache storage. If your cache
      # disk encounters a error, the gateway prevents read and write
      # operations on virtual tapes in the gateway. For example, an error can
      # occur when a disk is corrupted or removed from the gateway. When a
      # cache is reset, the gateway loses its cache storage. At this point you
      # can reconfigure the disks as cache disks.
      #
      # <important markdown="1"> If the cache disk you are resetting contains data that has not been
      # uploaded to Amazon S3 yet, that data can be lost. After you reset
      # cache disks, there will be no configured cache disks left in the
      # gateway, so you must configure at least one new cache disk for your
      # gateway to function properly.
      #
      #  </important>
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::ResetCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ResetCacheOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.reset_cache({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def reset_cache(params = {}, options = {})
        req = build_request(:reset_cache, params)
        req.send_request(options)
      end

      # Retrieves an archived virtual tape from the virtual tape shelf (VTS)
      # to a gateway-VTL. Virtual tapes archived in the VTS are not associated
      # with any gateway. However after a tape is retrieved, it is associated
      # with a gateway, even though it is also listed in the VTS.
      #
      # Once a tape is successfully retrieved to a gateway, it cannot be
      # retrieved again to another gateway. You must archive the tape again
      # before you can retrieve it to another gateway.
      # @option params [required, String] :tape_arn
      #   The Amazon Resource Name (ARN) of the virtual tape you want to
      #   retrieve from the virtual tape shelf (VTS).
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway you want to retrieve the
      #   virtual tape to. Use the ListGateways operation to return a list of
      #   gateways for your account and region.
      #
      #   You retrieve archived virtual tapes to only one gateway and the
      #   gateway must be a gateway-VTL.
      # @return [Types::RetrieveTapeArchiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RetrieveTapeArchiveOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.retrieve_tape_archive({
      #     tape_arn: "TapeARN", # required
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def retrieve_tape_archive(params = {}, options = {})
        req = build_request(:retrieve_tape_archive, params)
        req.send_request(options)
      end

      # Retrieves the recovery point for the specified virtual tape.
      #
      # A recovery point is a point in time view of a virtual tape at which
      # all the data on the tape is consistent. If your gateway crashes,
      # virtual tapes that have recovery points can be recovered to a new
      # gateway.
      #
      # <note markdown="1">The virtual tape can be retrieved to only one gateway. The retrieved
      # tape is read-only. The virtual tape can be retrieved to only a
      # gateway-VTL. There is no charge for retrieving recovery points.
      #
      #  </note>
      # @option params [required, String] :tape_arn
      #   The Amazon Resource Name (ARN) of the virtual tape for which you want
      #   to retrieve the recovery point.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::RetrieveTapeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RetrieveTapeRecoveryPointOutput#tape_arn #TapeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.retrieve_tape_recovery_point({
      #     tape_arn: "TapeARN", # required
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tape_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def retrieve_tape_recovery_point(params = {}, options = {})
        req = build_request(:retrieve_tape_recovery_point, params)
        req.send_request(options)
      end

      # Sets the password for your VM local console. When you log in to the
      # local console for the first time, you log in to the VM with the
      # default credentials. We recommend that you set a new password. You
      # don\'t need to know the default password to set a new password.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, String] :local_console_password
      #   The password you want to set for your VM local console.
      # @return [Types::SetLocalConsolePasswordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SetLocalConsolePasswordOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_local_console_password({
      #     gateway_arn: "GatewayARN", # required
      #     local_console_password: "LocalConsolePassword", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def set_local_console_password(params = {}, options = {})
        req = build_request(:set_local_console_password, params)
        req.send_request(options)
      end

      # Shuts down a gateway. To specify which gateway to shut down, use the
      # Amazon Resource Name (ARN) of the gateway in the body of your request.
      #
      # The operation shuts down the gateway service component running in the
      # storage gateway\'s virtual machine (VM) and not the VM.
      #
      # <note markdown="1">If you want to shut down the VM, it is recommended that you first shut
      # down the gateway component in the VM to avoid unpredictable
      # conditions.
      #
      #  </note>
      #
      # After the gateway is shutdown, you cannot call any other API except
      # StartGateway, DescribeGatewayInformation, and ListGateways. For more
      # information, see ActivateGateway. Your applications cannot read from
      # or write to the gateway\'s storage volumes, and there are no snapshots
      # taken.
      #
      # <note markdown="1">When you make a shutdown request, you will get a `200 OK` success
      # response immediately. However, it might take some time for the gateway
      # to shut down. You can call the DescribeGatewayInformation API to check
      # the status. For more information, see ActivateGateway.
      #
      #  </note>
      #
      # If do not intend to use the gateway again, you must delete the gateway
      # (using DeleteGateway) to no longer pay software charges associated
      # with the gateway.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::ShutdownGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ShutdownGatewayOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.shutdown_gateway({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def shutdown_gateway(params = {}, options = {})
        req = build_request(:shutdown_gateway, params)
        req.send_request(options)
      end

      # Starts a gateway that you previously shut down (see ShutdownGateway).
      # After the gateway starts, you can then make other API calls, your
      # applications can read from or write to the gateway\'s storage volumes
      # and you will be able to take snapshot backups.
      #
      # <note markdown="1">When you make a request, you will get a 200 OK success response
      # immediately. However, it might take some time for the gateway to be
      # ready. You should call DescribeGatewayInformation and check the status
      # before making any additional API calls. For more information, see
      # ActivateGateway.
      #
      #  </note>
      #
      # To specify which gateway to start, use the Amazon Resource Name (ARN)
      # of the gateway in your request.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::StartGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartGatewayOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_gateway({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_gateway(params = {}, options = {})
        req = build_request(:start_gateway, params)
        req.send_request(options)
      end

      # Updates the bandwidth rate limits of a gateway. You can update both
      # the upload and download bandwidth rate limit or specify only one of
      # the two. If you don\'t set a bandwidth rate limit, the existing rate
      # limit remains.
      #
      # By default, a gateway\'s bandwidth rate limits are not set. If you
      # don\'t set any limit, the gateway does not have any limitations on its
      # bandwidth usage and could potentially use the maximum available
      # bandwidth.
      #
      # To specify which gateway to update, use the Amazon Resource Name (ARN)
      # of the gateway in your request.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [Integer] :average_upload_rate_limit_in_bits_per_sec
      #   The average upload bandwidth rate limit in bits per second.
      # @option params [Integer] :average_download_rate_limit_in_bits_per_sec
      #   The average download bandwidth rate limit in bits per second.
      # @return [Types::UpdateBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateBandwidthRateLimitOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_bandwidth_rate_limit({
      #     gateway_arn: "GatewayARN", # required
      #     average_upload_rate_limit_in_bits_per_sec: 1,
      #     average_download_rate_limit_in_bits_per_sec: 1,
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_bandwidth_rate_limit(params = {}, options = {})
        req = build_request(:update_bandwidth_rate_limit, params)
        req.send_request(options)
      end

      # Updates the Challenge-Handshake Authentication Protocol (CHAP)
      # credentials for a specified iSCSI target. By default, a gateway does
      # not have CHAP enabled; however, for added security, you might use it.
      #
      # <important markdown="1"> When you update CHAP credentials, all existing connections on the
      # target are closed and initiators must reconnect with the new
      # credentials.
      #
      #  </important>
      # @option params [required, String] :target_arn
      #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
      #   DescribeStorediSCSIVolumes operation to return the TargetARN for
      #   specified VolumeARN.
      # @option params [required, String] :secret_to_authenticate_initiator
      #   The secret key that the initiator (for example, the Windows client)
      #   must provide to participate in mutual CHAP with the target.
      #
      #   <note markdown="1">The secret key must be between 12 and 16 bytes when encoded in UTF-8.
      #
      #    </note>
      # @option params [required, String] :initiator_name
      #   The iSCSI initiator that connects to the target.
      # @option params [String] :secret_to_authenticate_target
      #   The secret key that the target must provide to participate in mutual
      #   CHAP with the initiator (e.g. Windows client).
      #
      #   Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
      #
      #   <note markdown="1">The secret key must be between 12 and 16 bytes when encoded in UTF-8.
      #
      #    </note>
      # @return [Types::UpdateChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateChapCredentialsOutput#target_arn #TargetARN} => String
      #   * {Types::UpdateChapCredentialsOutput#initiator_name #InitiatorName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_chap_credentials({
      #     target_arn: "TargetARN", # required
      #     secret_to_authenticate_initiator: "ChapSecret", # required
      #     initiator_name: "IqnName", # required
      #     secret_to_authenticate_target: "ChapSecret",
      #   })
      #
      # @example Response structure
      #   resp.target_arn #=> String
      #   resp.initiator_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_chap_credentials(params = {}, options = {})
        req = build_request(:update_chap_credentials, params)
        req.send_request(options)
      end

      # Updates a gateway\'s metadata, which includes the gateway\'s name and
      # time zone. To specify which gateway to update, use the Amazon Resource
      # Name (ARN) of the gateway in your request.
      #
      # <note markdown="1">For Gateways activated after September 2, 2015, the gateway\'s ARN
      # contains the gateway ID rather than the gateway name. However,
      # changing the name of the gateway has no effect on the gateway\'s ARN.
      #
      #  </note>
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [String] :gateway_name
      #   The name you configured for your gateway.
      # @option params [String] :gateway_timezone
      # @return [Types::UpdateGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateGatewayInformationOutput#gateway_arn #GatewayARN} => String
      #   * {Types::UpdateGatewayInformationOutput#gateway_name #GatewayName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_gateway_information({
      #     gateway_arn: "GatewayARN", # required
      #     gateway_name: "GatewayName",
      #     gateway_timezone: "GatewayTimezone",
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      #   resp.gateway_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_gateway_information(params = {}, options = {})
        req = build_request(:update_gateway_information, params)
        req.send_request(options)
      end

      # Updates the gateway virtual machine (VM) software. The request
      # immediately triggers the software update.
      #
      # <note markdown="1">When you make this request, you get a `200 OK` success response
      # immediately. However, it might take some time for the update to
      # complete. You can call DescribeGatewayInformation to verify the
      # gateway is in the `STATE_RUNNING` state.
      #
      #  </note>
      #
      # <important markdown="1">A software update forces a system restart of your gateway. You can
      # minimize the chance of any disruption to your applications by
      # increasing your iSCSI Initiators\' timeouts. For more information
      # about increasing iSCSI Initiator timeouts for Windows and Linux, see
      # [Customizing Your Windows iSCSI Settings][1] and [Customizing Your
      # Linux iSCSI Settings][2], respectively.
      #
      #  </important>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings
      # [2]: http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @return [Types::UpdateGatewaySoftwareNowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateGatewaySoftwareNowOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_gateway_software_now({
      #     gateway_arn: "GatewayARN", # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_gateway_software_now(params = {}, options = {})
        req = build_request(:update_gateway_software_now, params)
        req.send_request(options)
      end

      # Updates a gateway\'s weekly maintenance start time information,
      # including day and time of the week. The maintenance time is the time
      # in your gateway\'s time zone.
      # @option params [required, String] :gateway_arn
      #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
      #   operation to return a list of gateways for your account and region.
      # @option params [required, Integer] :hour_of_day
      #   The hour component of the maintenance start time represented as *hh*,
      #   where *hh* is the hour (00 to 23). The hour of the day is in the time
      #   zone of the gateway.
      # @option params [required, Integer] :minute_of_hour
      #   The minute component of the maintenance start time represented as
      #   *mm*, where *mm* is the minute (00 to 59). The minute of the hour is
      #   in the time zone of the gateway.
      # @option params [required, Integer] :day_of_week
      #   The maintenance start time day of the week.
      # @return [Types::UpdateMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateMaintenanceStartTimeOutput#gateway_arn #GatewayARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_maintenance_start_time({
      #     gateway_arn: "GatewayARN", # required
      #     hour_of_day: 1, # required
      #     minute_of_hour: 1, # required
      #     day_of_week: 1, # required
      #   })
      #
      # @example Response structure
      #   resp.gateway_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_maintenance_start_time(params = {}, options = {})
        req = build_request(:update_maintenance_start_time, params)
        req.send_request(options)
      end

      # Updates a snapshot schedule configured for a gateway volume.
      #
      # The default snapshot schedule for volume is once every 24 hours,
      # starting at the creation time of the volume. You can use this API to
      # change the snapshot schedule configured for the volume.
      #
      # In the request you must identify the gateway volume whose snapshot
      # schedule you want to update, and the schedule information, including
      # when you want the snapshot to begin on a day and the frequency (in
      # hours) of snapshots.
      # @option params [required, String] :volume_arn
      #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
      #   operation to return a list of gateway volumes.
      # @option params [required, Integer] :start_at
      #   The hour of the day at which the snapshot schedule begins represented
      #   as *hh*, where *hh* is the hour (0 to 23). The hour of the day is in
      #   the time zone of the gateway.
      # @option params [required, Integer] :recurrence_in_hours
      #   Frequency of snapshots. Specify the number of hours between snapshots.
      # @option params [String] :description
      #   Optional description of the snapshot that overwrites the existing
      #   description.
      # @return [Types::UpdateSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateSnapshotScheduleOutput#volume_arn #VolumeARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_snapshot_schedule({
      #     volume_arn: "VolumeARN", # required
      #     start_at: 1, # required
      #     recurrence_in_hours: 1, # required
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.volume_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_snapshot_schedule(params = {}, options = {})
        req = build_request(:update_snapshot_schedule, params)
        req.send_request(options)
      end

      # Updates the type of medium changer in a gateway-VTL. When you activate
      # a gateway-VTL, you select a medium changer type for the gateway-VTL.
      # This operation enables you to select a different type of medium
      # changer after a gateway-VTL is activated.
      # @option params [required, String] :vtl_device_arn
      #   The Amazon Resource Name (ARN) of the medium changer you want to
      #   select.
      # @option params [required, String] :device_type
      #   The type of medium changer you want to select.
      #
      #   Valid Values: \"STK-L700\", \"AWS-Gateway-VTL\"
      # @return [Types::UpdateVTLDeviceTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateVTLDeviceTypeOutput#vtl_device_arn #VTLDeviceARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_vtl_device_type({
      #     vtl_device_arn: "VTLDeviceARN", # required
      #     device_type: "DeviceType", # required
      #   })
      #
      # @example Response structure
      #   resp.vtl_device_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_vtl_device_type(params = {}, options = {})
        req = build_request(:update_vtl_device_type, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
