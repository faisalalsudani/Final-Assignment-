class Batch < ApplicationRecord

  scope :order_by_name, -> { order(:name) }

end
