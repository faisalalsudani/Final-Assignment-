class Batch < ApplicationRecord

  has_many :students

  scope :order_by_name, -> { order(:name) }

end
