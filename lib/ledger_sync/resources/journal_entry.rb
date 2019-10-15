module LedgerSync
  class JournalEntry < LedgerSync::Resource
    attribute :currency, type: Type::String
    attribute :memo, type: Type::String
    attribute :transaction_date, type: Type::Date

    references_many :line_items, to: JournalEntryLineItem

    def name
      "JournalEntry: #{transaction_date.to_s}"
    end
  end
end
