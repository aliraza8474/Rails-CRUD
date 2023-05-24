Rails.configuration.stripe = {
    publishable_key: 'pk_test_51NAu7bBjfkrs2IDKHRaQwDhQThxqfvlTSh8OnEF6MKpad59XB8KSw6AHaV4e8jbh6RFrJWlvO6vQWbWoyVBqNkWS00ruCNcew7',
    secret_key: 'sk_test_51NAu7bBjfkrs2IDKJajR5Z5ES5oFj7Qw3ORPWDCkCe02AkajcSYqS1BvHnQDzKhElyCVnaQIxggS904IiUXhbk4D00ZYTg1Avb'
  }
  Stripe.api_key = Rails.configuration.stripe[:secret_key]
  