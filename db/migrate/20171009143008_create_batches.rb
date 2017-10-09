class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.string :name
      t.string :startdate
      t.string :enddate

      t.timestamps
    end
  end
end
