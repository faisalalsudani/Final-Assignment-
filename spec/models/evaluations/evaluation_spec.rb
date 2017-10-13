require 'rails_helper'

RSpec.describe Evaluation, type: :model do

    it "belongs to a student" do
      batch = build(:batch)
      student = batch.students.build(first_name: "Faisal")
      evaluation = student.evaluations.build(remarks: "nice work")

      expect(evaluation.student).to eq(student)
    end

end
