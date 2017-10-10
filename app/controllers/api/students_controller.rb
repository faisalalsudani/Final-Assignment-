class Api::StudentsController < ApplicationController
  def index
    render status: 200, json: {
      students: Student.all
    }.to_json
  end
end
