require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  let(:user) {
    User.create!(email: 'test@example.com', password: 'xrdf3$awg', name: 'name', surname: 'surname', contact_number: '0400000000', address: '44 street suburb 4000')
  }

  let(:valid_attributes) {
    {title: 'title', description: 'description', location: 'location', user: user}
  }
  before(:each) do
    service = Service.create! valid_attributes
    @service = assign(:service, service )
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do
    end
  end
end
