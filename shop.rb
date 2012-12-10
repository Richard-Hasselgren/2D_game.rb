class Customer

	attr_reader :name, :cart

	def initialize(name)
		@name = name
		@cart = Cart.new(self)
	end

end

class Cart

	attr_reader :customer, :item
	
	def initialize(customer)
		@customer = customer
		@items = []
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
puts cust1.name
puts cust2.name
