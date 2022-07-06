class Log < ApplicationRecord
  belongs_to :product
  LogTypes = {add: 0, remove: 1}
  validates :quantity, presence: true, numericality: true

  def self.get_log_types
    {
      'Added' =>LogTypes[:add],
      'Removed' =>LogTypes[:remove]
    }
  end

  def log_type_name
    return "Added" if log_type == LogTypes[:add]
    return "Removed" if log_type == LogTypes[:remove]
    return "NA"
  end
end
