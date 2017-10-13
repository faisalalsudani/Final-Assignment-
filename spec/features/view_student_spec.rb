require 'rails_helper'

describe "View student" do

  before { login_as user }


  let(:batch) { create :batch }
  let(:student) { create :student, first_name:"Faisal", last_name:"Al-Sudani", batch_id:@batch }
  let(:user) { create :user, email: "faisal@gmail.com" }



  scenario "Teacher can see student" do
    visit "/batches/#{@batch}"
    expect(page).to have_text(batch.students.first)
  end


end
