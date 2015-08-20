class ProductsController < ApplicationController

	def index
        if params["keyword4"].present?
            k = params["keyword4"].strip
            @products = Product.where("name LIKE ?","%#{k}%")
            #@orders = Order.where(:date => params["k"],:name => params["k"])
        else
            @products = Product.order("name asc")
        end
        #@products = Product.order("name asc")
        @products = @products.page(params[:page]).per(5)
	end

	def show
		@product = Product.find_by(:id => params["id"])

        #record the recent clicks
        #session["history2"] ||= []
        #session["history2"] << @product.id
	end
    

    def new
    	@product = Product.new
    end

    def create
	    @product = Product.new
	    @product.name = params["name"]
        @product.store_id = params["store_id"]
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
        if  @product.save
            redirect_to "/stores/#{@product.store_id}"
        else
            render 'new'
        end
        
        #end
    end

    def edit
    	@product = Product.find_by(:id => params["id"])
        @product.store_id = params["store_id"]
    end

    def update
        puts "hello"
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