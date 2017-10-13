require 'rails_helper'

feature 'Teacher pick random student' do

  let(:batch) { create :batch }
  let(:user) { create :user, email: "faisal@gmail.com" }
  let(:student1) { create :student, first_name: "Cristiano", last_name: "Ronaldo", batch:@batch}
  let(:student2) { create :student, first_name: "Sergio", last_name: "Ramos", batch:@batch}
  let(:student3) { create :student, first_name: "Kaylor", last_name: "Navas", batch:@batch}
  let(:evaluation1) { create :evaluation, remarks: "good work", green: true, yellow: false, red: false, student: @student1}
  let(:evaluation2) { create :evaluation, remarks: "not so good work", green: false, yellow: true, red: false, student: @student2}
  let(:evaluation3) { create :evaluation, remarks: "bad work", green: false, yellow: false, red: true, student: @student3}
  before { login_as user }


  it 'random student to get asked' do
    visit batch_path(batch.id)
    page.find(:css, ".random-student").click
    expect(page).to have_content('Daily evaluation')
  end
  
end
