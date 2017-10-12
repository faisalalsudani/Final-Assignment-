class ChangeStartdateInBatch < ActiveRecord::Migration[5.1]
  def self.up
      change_table :batches do |t|
        t.change :startdate, :string
    end
  end
  def self.down
    change_table :batches do |t|
      t.change :startdate, :datetime
    end
  end
end
