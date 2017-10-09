class BatchesController < ApplicationController

  def index
    @batches = Batch.all
  end

  def show
    @batch   = Batch.find(params[:id])
  end

  def new
    @batch = Batch.new
  end

  private

  def batch_params
    params.require(:batch).permit(:name,:startdate, :enddate)
  end

end
