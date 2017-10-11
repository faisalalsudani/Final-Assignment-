class EvaluationsController < ApplicationController

  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]
  before_action :set_student


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
    if params[:save_next]
      @student = Student.find(params[:student_id])
      @evaluation = Evaluation.new(evaluation_params)
      @evaluation.student_id = params[:student_id]
      @evaluation.save
      @student_next = Student.where('id > ?', params[:student_id]).first
      redirect_to batch_student_path(@student_next.batch, @student_next.id)
    else
      @evaluation = Evaluation.new
      @student = Student.find(params[:student_id])
      @evaluation = @student.evaluations.create(evaluation_params)
      @evaluation.student_id = @student.id
      @evaluation.save
      redirect_to @evaluation.student.batch
    end

  end


  def set_evaluation
      @evaluation = Evaluation.find(params[:id])
  end

  def set_student
    @student = Student.find(params[:student_id])
  end

  private
  def evaluation_params
    params.require(:evaluation).permit(:remarks, :green, :yellow, :red, :student_id, :points)
  end
end
