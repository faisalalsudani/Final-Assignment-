class Student < ApplicationRecord

  has_many :evaluations
  belongs_to :batch

end
