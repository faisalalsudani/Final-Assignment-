class Api::EvaluationsController < ApplicationController
  def index
    render status: 200, json: {
      evaluations: Evaluation.all
    }.to_json
  end
end
