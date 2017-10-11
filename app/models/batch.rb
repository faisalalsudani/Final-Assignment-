class Batch < ApplicationRecord

  has_many :students

  def students_within_this_batch
    @batch        = Batch.find(id)

    @green_evaluations = []
    @yellow_evaluations = []
    @red_evaluations = []

    @batch.students.each do |student|
      student.evaluations.last(1).each do |evaluation|
        if evaluation.green === true
          @green_evaluations.push(student.first_name)
          puts @green_evaluations.length
        elsif evaluation.yellow === true
          @yellow_evaluations.push(student.first_name)
          puts @yellow_evaluations.length
        elsif evaluation.red === true
          @red_evaluations.push(student.first_name)
          puts @red_evaluations.length
        end
      end
    end

    print @red_evaluations
  end

  def random_student
     green = @green_evaluations.sample
     yellow = @yellow_evaluations.sample
     red = @red_evaluations.sample

     puts picked = rand(1..10)
  end



end
