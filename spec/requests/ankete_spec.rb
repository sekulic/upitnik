require 'rails_helper'

RSpec.describe "Ankete", :type => :request do
  describe "GET /ankete" do
    it "works! (now write some real specs)" do
      get ankete_path
      expect(response).to have_http_status(200)
    end
  end
end
