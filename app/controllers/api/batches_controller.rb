class Api::BatchesController < ApplicationController
  def index
    render status: 200, json: {
      batches: Batch.all
    }.to_json
  end
end
