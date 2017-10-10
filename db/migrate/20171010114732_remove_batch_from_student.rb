class RemoveBatchFromStudent < ActiveRecord::Migration[5.1]
  def change
    remove_reference :students, :batch, foreign_key: true
  end
end
