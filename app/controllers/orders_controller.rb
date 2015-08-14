class OrdersController < ApplicationController

	def index
        if params["keyword3"].present?
            k = params["keyword3"].strip
            @orders = Order.where("date like '%#{k}%'")
        else
            @orders = Order.all
        end

	end

	def show
		@order = Order.find_by(:id => params["id"])
	end

	def new
		render "new"
	end

	def create
		@order = Order.new
		@order.date = params["date"]
        @order.ship_day = params["ship_day"]
        @order.name = params["name"]
        @order.contact_info = params["contact_info"]
        @order.bill_info = params["bill_info"]
        @order.ship_info = params["ship_info"]
        @order.save
        redirect_to "/orders"
    end

    def edit
    	@order = Order.find_by(:id => params["id"])
    end

    def update
    	@order = Order.find_by(:id => params["id"])
		@order.date = params[:date]
        @order.ship_day = params[:ship_day]
        @order.name = params[:name]
        @order.contact_info = params[:contact_info]
        @order.bill_info = params[:bill_info]
        @order.ship_info = params[:ship_info]
        @order.save
        redirect_to "/orders/#{@order.id}"
    end

    def destroy
    	@order = Order.find_by(:id => params["id"])
    	@order.delete
    	redirect_to "/orders"
    end
end