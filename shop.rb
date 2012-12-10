class Customer

	attr_reader :name, :cart

	def initialize(name)
		@name = name
		@cart = Cart.new(self)
	end
	
	def add_to_cart(item)
		@cart.items << item
	end
end

class Cart

	attr_reader :customer, :item
	
	def initialize(customer)
		@customer = customer
		@items = []
	end

	def contents
		total_price = 0
		@items.each_wiht_index do |item, i|
			puts "#{i + 1}: #{item.name} (#{item.price})"
			total_price += item.price 
		end
		puts "Total cost: #{total_price} GBP"
	end

end


class Item

	def initialize(name, price)
		@name = name
		@price = price
	end

 end

cust1 = Customer.new("Daniel")
cust2 = Customer.new("Eddie")
korv = Item.new("sausage", 12)
senap = Item.new("mustard", 5)
mos = Item.new("mash", 3)
cust1.add_to_cart(korv)
cust1.add_to_cart(korv)
cust1.add_to_cart(senap)

cust1.cart.contents
