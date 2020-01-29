# frozen_string_literal: true

require_relative 'bill'

module LedgerSync
  class BillPaymentLineItem < LedgerSync::Resource
    attribute :amount, type: Type::Integer

    references_many :ledger_transactions, to: [Bill]

    def name
      amount
    end
  end
end
