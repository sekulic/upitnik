require "rails_helper"

RSpec.describe AnketeController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ankete").to route_to("ankete#index")
    end

    it "routes to #new" do
      expect(:get => "/ankete/new").to route_to("ankete#new")
    end

    it "routes to #show" do
      expect(:get => "/ankete/1").to route_to("ankete#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ankete/1/edit").to route_to("ankete#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ankete").to route_to("ankete#create")
    end

    it "routes to #update" do
      expect(:put => "/ankete/1").to route_to("ankete#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ankete/1").to route_to("ankete#destroy", :id => "1")
    end

  end
end
