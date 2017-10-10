class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.string :remarks
      t.boolean :green
      t.boolean :yellow
      t.boolean :red

      t.timestamps
    end
  end
end
