if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_U9U56XJGX0W4lZgX9WYfDZez',
    :secret_key => 'sk_test_RsiycNHty8baiMJ6GrqatQC1'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]