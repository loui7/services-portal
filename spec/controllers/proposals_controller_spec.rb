require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe ProposalsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Proposal. As you add validations to Proposal, be sure to
  # adjust the attributes here as well.
  let(:user) {
    User.create!(email: 'test@example.com', password: 'xrdf3$awg', name: 'name', surname: 'surname', contact_number: '0400000000', address: '44 street suburb 4000')
  }

  let(:service) {
    Service.create!(title: 'title', description: 'description', location: 'location', user: user)
  }

  let(:valid_attributes) {
    {price: '250.00', notes: 'description', service: service, user: user }
  }

  let(:invalid_attributes) {
    {price: 'a', notes: '', user_id: 0, service: service}
  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProposalsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Proposal.create! valid_attributes
      sign_in user
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      user
      service
      sign_in user
      get :new, params: {service_id:service.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      proposal = Proposal.create! valid_attributes
      sign_in user
      get :edit, params: {id: proposal.to_param, service_id: service.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Proposal" do
        user
        service
        sign_in user
        expect {
          post :create, params: {proposal: valid_attributes, service_id: service.id}, session: valid_session
        }.to change(Proposal, :count).by(1)
      end

      it "redirects to the created proposal" do
        user
        service
        sign_in user
        post :create, params: {proposal: valid_attributes, service_id: service.id}, session: valid_session
        expect(response).to redirect_to(proposals_path)
      end
    end

    context "with invalid params" do
      
      it "returns a success response (i.e. to display the 'new' template)" do
        skip("will fail until input validation is added to proposal price on create")
        user
        sign_in user
        post :create, params: {proposal: invalid_attributes, service_id: service.id}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested proposal" do
        proposal = Proposal.create! valid_attributes
        sign_in user
        put :update, params: {id: proposal.to_param, service_id: service.id, proposal: new_attributes}, session: valid_session
        proposal.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the proposal" do
        proposal = Proposal.create! valid_attributes
        sign_in user
        put :update, params: {id: proposal.to_param, service_id: service.id, proposal: valid_attributes}, session: valid_session
        expect(response).to redirect_to(service)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        skip("will fail until input validation is added to proposal price on update")
        proposal = Proposal.create! valid_attributes
        sign_in user
        put :update, params: {id: proposal.to_param, service_id: service.id, proposal: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested proposal" do
      proposal = Proposal.create! valid_attributes
      sign_in user
      expect {
        delete :destroy, params: {id: proposal.to_param, service_id: service.id}, session: valid_session
      }.to change(Proposal, :count).by(-1)
    end

    it "redirects to the service" do
      proposal = Proposal.create! valid_attributes
      sign_in user
      delete :destroy, params: {id: proposal.to_param, service_id: service.id}, session: valid_session
      expect(response).to redirect_to("/services/#{service.id}")
    end
  end

end