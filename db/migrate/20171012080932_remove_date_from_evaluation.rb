class RemoveDateFromEvaluation < ActiveRecord::Migration[5.1]
  def change
    remove_column :evaluations, :date, :datetime
  end
end
