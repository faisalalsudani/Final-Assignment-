class AddPointToEvaluation < ActiveRecord::Migration[5.1]
  def change
    add_reference :evaluations, :evaluation, foreign_key: true
  end
end
