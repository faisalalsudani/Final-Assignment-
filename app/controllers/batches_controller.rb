class BatchesController < ApplicationController

  def index
    @batches = Batch.all
  end

  private

  def batch_params
    params.require(:batch).permit(:name, :startdate, :enddate)
  end

end
