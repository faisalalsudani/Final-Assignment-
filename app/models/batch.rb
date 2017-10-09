class Batch < ApplicationRecord
  has_many :students

  validates :name, uniqueness: true


  scope :order_by_name, -> { order(:name) }

end
