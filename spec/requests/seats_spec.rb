require 'rails_helper'

RSpec.describe "Seats", type: :request do
  describe "GET /seats" do
    it "works! (now write some real specs)" do
      get seats_path
      expect(response).to have_http_status(200)
    end
  end
end
