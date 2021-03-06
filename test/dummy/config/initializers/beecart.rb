# -*- coding: utf-8 -*-

Beecart.configure do |config|
  config.expire_time = 3000
  config.redis = {
    host: 'localhost',
    port: 5555
  }

  config.tax_rate = 0.05

  config.default_gateway = :webpay
end

module Beecart
  module Validators
    autoload :CustomValidator, 'beecart/validators/custom_validator'
  end
end
