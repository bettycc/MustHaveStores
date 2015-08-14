class ProductsController < ApplicationController

	def index
        @products = Product.order("name asc")
	end

	def show
		@product = Product.find_by(:id => params["id"])
	end
    

    def new
    	render "new"
    end

    def create
	    @product = Product.new
	    @product.name = params["name"]
    	@product.kind = params["kind"]
        @product.price = params["price"]
        @product.designer = params["designer"]
        @product.description = params["description"]
        @product.in_stock = params["in_stock"]
        @product.sold = params["sold"]
        @product.release_date = params["release_date"]
        @product.photourl1 = params["photourl1"]
        @product.photourl2 = params["photourl2"]
        @product.photourl3 = params["photourl3"] 
        #if @product.store!= nil     
        @product.save
        redirect_to "/stores/#{@product.store_id}"
        #end
    end

    def edit
    	@product = Product.find_by(:id => params["id"])
    end

    def update
    	@product = Product.find_by(:id => params["id"])
    	@product.name = params[:name]
    	@product.kind = params[:kind]
        @product.price = params[:price]
        @product.designer = params[:designer]
        @product.description = params[:description]
        @product.in_stock = params[:in_stock]
        @product.sold = params[:sold]
        @product.release_date = params[:release_date]
        @product.photourl1 = params[:photourl1]
        @product.photourl2 = params[:photourl2]
        @product.photourl3 = params[:photourl3]
        @product.save
        redirect_to "/products/#{@product.id}"
    end

    def destroy
        @product = Product.find_by(:id => params["id"])
    	@product.delete
        redirect_to "/products"
    end


end