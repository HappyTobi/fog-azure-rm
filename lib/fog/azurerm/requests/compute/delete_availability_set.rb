module Fog
  module Compute
    class AzureRM
      # This class provides the actual implemention for service calls.
      class Real
        def delete_availability_set(resource_group, name)
          begin
          @compute_mgmt_client.availability_sets.delete(resource_group,
                                                        name)
        rescue MsRestAzure::AzureOperationError => e
          msg = "Exception in deleting Availability Set:
                 #{e.body['error']['message']}"
          raise msg
        end
        end
      end
      # This class provides the mock implementation for unit tests.
      class Mock
        def delete_availability_set(resource_group, name)
        end
      end
    end
  end
end
