class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @service = Service.find(params[:service_id])
    @proposal = Proposal.find(params[:proposal_id])

    Stripe.api_key = 'sk_test_QXSN958jmgfgqcEBpmWBgPiM00i2iw8OZN'

    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
    name: @proposal.user.fullname,
    description: @service.title,
    amount: (@proposal.price),
    currency: 'aud',
    quantity: 1,
    }],
    success_url: payment_success_url(service_id: @service.id, id: @proposal.id),
    cancel_url: my_services_url,
    )
  end
end
