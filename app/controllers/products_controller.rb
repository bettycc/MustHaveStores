class ProductsController < ApplictionController

	def index
        #@products = Product.order("name asc")
        #if params["keyword2"].present?
        #   k=params["keyword2"].strip
        #    @products = Product.where("name LIKE '%#{k}%'")
        #else
        #    @products = Product.where("name asc")
        #end
        #redirect_to "/stores/#{@stores.id}"
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
        @product.save
        redirect_to "/stores/#{@product.store_id}"
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

    def delete
    	@product = Product.find_by(:id => params["id"])
    	@product.delete
    end


end