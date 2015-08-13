class Product < ActiveRecord::Base
	belongs_to :store
	has_many :orderitems
	has_many :orders, :through => :orderitems
	
	#belongs_to :order
end
