class Order < ActiveRecord::Base	
	#has_many :products
	has_many :orderitems
	has_many :products, :through => :orderitems
end
