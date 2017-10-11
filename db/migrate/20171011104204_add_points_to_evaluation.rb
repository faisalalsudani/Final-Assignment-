class AddPointsToEvaluation < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluations, :points, :integer, :null => false, :default => 0
  end
end
