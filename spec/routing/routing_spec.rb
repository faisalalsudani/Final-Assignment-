require "rails_helper"

RSpec.describe BatchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/batches").to route_to("batches#index")
    end

    it "routes to #new" do
      expect(:get => "/batches/new").to route_to("batches#new")
    end

    it "routes to #show" do
      expect(:get => "/batches/1").to route_to("batches#show", :id => "1")
    end
    
  end
end
