class RemovePointFromEvaluation < ActiveRecord::Migration[5.1]
  def change
    remove_reference :evaluations, :evaluation, foreign_key: true
  end
end
