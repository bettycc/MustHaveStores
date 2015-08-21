class Product < ActiveRecord::Base
	belongs_to :store
	has_many :orderitems
	has_many :orders, :through => :orderitems

	validates :name, presence: true, uniqueness: true
	validates :price, presence: true
	validates :designer, presence: true
	validates :photourl1, presence: true
	#validates :photourl2, presence: true
	#validates :photourl3, presence: true
	#validates :release_date, presence: true
	#validates :in_stock, presence: true
	#validates :sold, presence: true
	
	#belongs_to :order
end
