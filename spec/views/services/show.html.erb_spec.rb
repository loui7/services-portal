require 'rails_helper'

RSpec.describe "services/show", type: :view do
  let(:user) {
    User.create!(email: 'test@example.com', password: 'xrdf3$awg', name: 'name', surname: 'surname', contact_number: '0400000000', address: '44 street suburb 4000')
  }

  let(:valid_attributes) {
    {title: 'title', description: 'description', location: 'location', user: user}
  }
  before(:each) do
    service = Service.create! valid_attributes
    sign_in user
    @service = assign(:service, service )
  end

  it "renders attributes in <p>" do
    render
  end
end
