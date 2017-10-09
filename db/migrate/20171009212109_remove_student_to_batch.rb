class RemoveStudentToBatch < ActiveRecord::Migration[5.1]
  def change
    remove_reference :batches, :student, foreign_key: true
  end
end
