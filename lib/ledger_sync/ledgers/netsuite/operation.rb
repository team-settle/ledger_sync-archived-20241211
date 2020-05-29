# frozen_string_literal: true

module LedgerSync
  module Ledgers
    module NetSuite
      class Operation
        module Mixin
          def self.included(base)
            base.include Ledgers::Operation::Mixin
            base.include InstanceMethods # To ensure these override parent methods
          end

          module InstanceMethods
            def request_params
              {}
            end

            def ledger_resource_path(args = {})
              client.ledger_resource_path(
                {
                  resource: resource
                }.merge(args)
              )
            end
          end
        end
      end
    end
  end
end
