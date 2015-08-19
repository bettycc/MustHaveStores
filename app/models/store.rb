class Store < ActiveRecord::Base
	has_many :products
	#has_many :orders ,:through => :products
	validates :name, presence: true, uniqueness: true
	validates :description, presence: true
	validates :contact_info, presence: true
	validates :photourl, presence: true, uniqueness: true
	validates :open_date, presence: true
end
