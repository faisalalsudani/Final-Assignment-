class AddEvaluationsToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :evaluation, foreign_key: true
  end
end
