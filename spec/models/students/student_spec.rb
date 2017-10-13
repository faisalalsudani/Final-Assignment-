require 'rails_helper'

RSpec.describe Student, type: :model do

    it "belongs to a batch" do
      batch = build(:batch)
      student = batch.students.build(first_name: "Faisal")

      expect(student.batch).to eq(batch)
    end

end
