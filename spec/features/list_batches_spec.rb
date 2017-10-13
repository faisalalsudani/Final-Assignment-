require 'rails_helper'

describe "Current teacher can see a list of batches" do

  before { login_as user }

  let(:user) { create :user, email: "faisal@gmail.com" }

  let!(:batch1) { create :batch, name: "Batch #1", start_date: "2017-10-13 00:00:00 UTC", end_date: "2017-12-13 00:00:00 UTC"}
  let!(:batch2) { create :batch, name: "Batch #2", start_date: "2017-10-13 00:00:00 UTC", end_date: "2017-12-13 00:00:00 UTC"}

  it "shows all batches" do
    visit batches_url

    expect(page).to have_text("Batch #1")
    expect(page).to have_text("Batch #2")

    expect(page).to have_text("2017-10-13 00:00:00 UTC")
    expect(page).to have_text("2017-12-13 00:00:00 UTC")
  end



end
