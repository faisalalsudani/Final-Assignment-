require 'rails_helper'

describe "Viewing an individual batch" do
  let(:batch) { create :batch }
  let(:user) { create :user, email: "faisal@gmail.com" }
  before { login_as user }


  scenario "Teacher can view batch" do
    visit "/batches/#{@batch}"

    expect(page).to have_text("All batches")
  end

end
