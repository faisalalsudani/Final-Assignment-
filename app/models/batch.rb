class Batch < ApplicationRecord

  has_many :students

  def students_within_this_batch
    @batch = Batch.find(id)

    @green_evaluations = []
    @yellow_evaluations = []
    @red_evaluations = ["Please first add new evaluations to students!"]
    @no_evaluatios = ["No evaluations"]

    @batch.students.each do |student|
      student.evaluations.last(1).each do |evaluation|
        if evaluation.green === true
          @green_evaluations.push(student.id)
        elsif evaluation.yellow === true
          @yellow_evaluations.push(student.id)
        elsif evaluation.red === true
          @red_evaluations.push(student.id)
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
