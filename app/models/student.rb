class Student < ApplicationRecord

  belongs_to :batch
  has_many :evaluations, dependent: :destroy

  validates :first_name, presence: { message: "You have to add First name" }

  def full_name
    "#{first_name} #{last_name}"
  end

end
