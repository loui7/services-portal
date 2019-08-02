require 'rails_helper'

RSpec.describe "services/index", type: :view do
  let(:user) {
    User.create!(email: 'test@example.com', password: 'xrdf3$awg', name: 'name', surname: 'surname', contact_number: '0400000000', address: '44 street suburb 4000')
  }

  let(:valid_attributes) {
    {title: 'title', description: 'description', location: 'location', user: user}
  }
  before(:each) do
    service = Service.create! valid_attributes
    assign(:services, [service])
  end

  it "renders a list of services" do
    render
  end
end
