class Evaluation < ApplicationRecord

  validates :date, uniqueness: {scope: :student_id} 

  belongs_to :student

end
