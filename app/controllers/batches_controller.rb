class BatchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @batches = Batch.all
    @student = Student.new
  end

  def show
    @batch        = Batch.find(params[:id])
    @students     = @batch.students
    @student      = Student.new
  end

  def new
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(batch_params)
    if @batch.save
      redirect_to @batch, notice: "Batch created!"
    else
      render :new
    end
  end

  private

  def batch_params
    params.require(:batch).permit(:name,:startdate,:enddate)
  end

end
