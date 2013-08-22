require 'pry'
require_relative 'checkout'
require_relative 'product'


# Initiating the checkout

co = Checkout.new


# Produts for sale

fr1 = Product.new(:fr1, 311)
sr1 = Product.new(:sr1, 500)
cf1 = Product.new(:cf1, 1123)


# Displays the interface and allows for product scanning

co.menu





binding.pry