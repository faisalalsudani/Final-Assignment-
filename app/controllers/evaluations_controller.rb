class EvaluationsController < ApplicationController
  def index
    @evaluations = Evaluation.all
  end

  def show
    student = Student.find(params[:student_id])
    @evaluation = batch.evaluations.find(params[:id])
  end

  def new
    student = Student.find(params[:student_id])
    @evaluation = batch.student.evaluations.build
    @evaluation = Evaluation.new
  end

  def create
    student = Student.find(params[:student_id])

    @evaluation = student.evaluations.create(evaluation_params)

      if @evaluation.save
         redirect_to batches_path_students_path
      else
        render :new
      end

  end


  private
  def evaluation_params
    params.require(:evaluation).permit(:remarks, :student_id)
  end
end
