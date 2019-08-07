require 'rails_helper'

RSpec.describe "Proposals", type: :request do
  describe "GET /proposals" do
    it "redirects to signin when no logged in user" do
      get proposals_path
      expect(response).to have_http_status(302)
    end
  end
end
