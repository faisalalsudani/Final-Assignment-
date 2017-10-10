class EvaluationsController < ApplicationController

  def index
    @evaluations = Evaluation.all
  end

  def show
    student = Student.find(params[:student_id])
    @evaluation = student.evaluations.find(params[:id])
  end

  private
  def evaluation_params
    params.require(:evaluation).permit(:remarks)
  end

end
