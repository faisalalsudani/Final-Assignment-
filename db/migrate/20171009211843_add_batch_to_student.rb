class AddBatchToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :student, foreign_key: true
  end
end
