class PaymentsController < ApplicationController
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
    success_url: 'http://localhost:3000/',
    cancel_url: 'http://localhost:3000/',
    )
  end
end
