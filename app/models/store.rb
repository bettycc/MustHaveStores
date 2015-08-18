class Store < ActiveRecord::Base
	has_many :products
	#has_many :orders ,:through => :products
	validates :name, presence: true, uniqueness: true
end
