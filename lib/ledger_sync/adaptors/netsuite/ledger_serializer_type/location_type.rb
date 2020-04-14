# frozen_string_literal: true

module LedgerSync
  module Adaptors
    module NetSuite
      module LedgerSerializerType
        class LocationType < ReferenceType
          def convert_from_ledger(value:)
            super(
              resource_class: LedgerSync::Location,
              value: value
            )
          end
        end
      end
    end
  end
end
