class RemoveEvaluationsFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_reference :students, :student, foreign_key: true
  end
end
