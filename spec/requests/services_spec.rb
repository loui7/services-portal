require 'rails_helper'

RSpec.describe "Services", type: :request do

  describe "GET /services" do
    it "redirects to signin when no logged in user" do
      get services_path
      expect(response).to have_http_status(302)
    end
  end
end
