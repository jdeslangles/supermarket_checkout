class Checkout
  attr_reader :basket

  def initialize
    @basket = {}
  end

# Checkout menu, allows for product scanning - product automatically added to basket after scanning

  def menu

    # Welcome message

    puts `clear`
    puts "****G.A.Market1.0****"
    puts "Welcome to our superfast checkout system."
    puts "\nProduct code  | Name                   | Price"
    puts "----------------------------------------------------------"
    puts "FR1           | Fruit tea              | 3.11"
    puts "SR1           | Strawberries           | 5.00"
    puts "CF1           | Coffee                 | 11.23"
    puts "\nPlease scan your items: "
    puts "(Please enter codes one by one,"
    puts "separated by a space, then press ENTER)"


    # Scanning products and adding to basket

    items_scanned = gets.chomp.downcase
    items = items_scanned.split( )
    @basket = Hash.new(0)
    items.each { |item| @basket[item] +=1 }
    puts "Your current basket contains: " + @basket.map{|k,v| "#{v} x #{k}"}.join(', ') + "."


    # Keep shopping/exit

    puts "Keep shopping with us? y/n"
    answer = gets.chomp.downcase
    case answer
      when "y"
        menu
      when "n"
        puts "Thank you for your shopping with us - see you soon!"
      else
        puts "Assistance required..."
    end
  end


# How many instances of a product are in the basket?

  def number_of_products(product)
    @basket[product.to_s]
  end


# Sub_total for product BEFORE special offer

  def sub_total(product)
    number_of_products(product.code) * product.price
  end


#Basket total BEFORE special offer

  # def total_price_before_sale
  #   @basket.inject(0) { |sum, (product, number_of_products)| sum + sub_total(product) }
  # end


# Special offers

  def get_one_free(product)
    if number_of_products(product).even?
      sub_total(product)/2
    else
      (number_of_products(product) + 1)*(product.price)
    end
  end


  def discount(product)
    # if number_of_products(product) >
  end

end