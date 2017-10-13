class ChangeRedInEvaluation < ActiveRecord::Migration[5.1]
  def change
   add_column :evaluations, :rood, :boolean, default: true
 end
end
