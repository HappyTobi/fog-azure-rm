# rubocop:disable LineLength
module Fog
  module Storage
    class AzureRM
      # This class provides the actual implemention for service calls.
      class Real
        def create_storage_account(resource_group, name, params)
          @storage_mgmt_client.storage_accounts.create(resource_group, name, params)
        end
      end
      # This class provides the mock implementation for unit tests.
      class Mock
        def create_storage_account(resource_group, name, params)
          storage_acc = {
            name: name,
            location: params.location,
            resource_group: resource_group
          }
          storage_acc
        end
      end
    end
  end
end
