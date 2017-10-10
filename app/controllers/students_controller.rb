class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    batch = Batch.find(params[:id])
    @student = batch.students.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :photo, :label, :batch_id)
  end

end
