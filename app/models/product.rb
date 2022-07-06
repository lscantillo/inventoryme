class Product < ApplicationRecord
    validates :name, presence: true
    validates :reference, presence: true
    has_many :logs, dependent: :destroy

    def quantity
        total = 0
        self.logs.each do |log|
          if log.log_type ==Log::LogTypes[:add]
            total += log.quantity
          else
            total -= log.quantity
          end
        end
        total
      end
end
