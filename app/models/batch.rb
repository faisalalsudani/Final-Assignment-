class Batch < ApplicationRecord

  has_many :students
  validates :name, presence: { message: "You have to add Batch name" }


  def student_with_no_evaluation
    @batch = Batch.find(id)
    @batch.students.each do |student|
      student.evaluations.length
    end
  end

  def all_students_in_this_batch
    @batch = Batch.find(id)
    @student = @batch.students.each do |s|
      s.first_name
    end
  end

  def students_within_this_batch
    @batch = Batch.find(id)

    @green_evaluations = []
    @yellow_evaluations = []
    @red_evaluations = []

    @batch.students.each do |student|
      student.evaluations.last(1).each do |evaluation|
        if evaluation.green === true
          @green_evaluations.push(student.id)
        elsif evaluation.yellow === true
          @yellow_evaluations.push(student.id)
        else
          @red_evaluations.push(student.id)
        end
      end
    end

  end



  def random_student
     random_number = rand()

    if random_number <= 0.17
       @green_evaluations.sample
    elsif random_number <= 0.50
       @yellow_evaluations.sample
    else
       @red_evaluations.sample
    end
  end



end
