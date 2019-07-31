class PaymentsController < ApplicationController
  def new
    Stripe.api_key = 'sk_test_QXSN958jmgfgqcEBpmWBgPiM00i2iw8OZN'

    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
    name: 'placeholder',
    description: 'placeholder',
    amount: (2 * 100).to_i,
    currency: 'aud',
    quantity: 1,
    }],
    success_url: 'http://localhost:3000/',
    cancel_url: 'http://localhost:3000/',
    )
  end
end
