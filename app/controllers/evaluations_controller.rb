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
    @evaluation = Evaluation.new

    @student = Student.find(params[:student_id])

    @evaluation = @student.evaluations.create(evaluation_params)
    @evaluation.student_id = @student.id

      if @evaluation.save
         redirect_to @evaluation.student.batch
      else
        render :new
      end

  end


  private
  def evaluation_params
    params.require(:evaluation).permit(:remarks, :green, :yellow, :red, :student_id)
  end
end
