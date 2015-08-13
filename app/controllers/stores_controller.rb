class StoresController < ApplicationController

	def index
        if params["keyword"].present?
            k = params["keyword"].strip
            @stores = Store.where("name LIKE '%#{k}%'")
        else
            @stores = Store.all
        end
	end

    def new
    	render "new"
    end

    def create
    	@store = Store.new
    	@store.name = params["name"]
    	@store.kind = params["kind"]
    	@store.photourl = params["photourl"]
    	@store.description = params["description"]
    	@store.contact_info = params["contact_info"]
    	@store.open_date = params["open_date"]
        @store.is_featured =params["is_featured"]
        @store.save
    	redirect_to "/stores/#{@store.id}"
    end

    def show
        #find the store
    	@store = Store.find_by(:id => params["id"])

        #search the product in the certain store
        if params["keyword2"]
            k = params["keyword2"].strip
            @products = @store.products.where("name LIKE '%#{k}%'")
        else
            @products = @store.products
        end
        # /stores/:id?kind=crafty
        #if params["kind"].present?
        #    @products = @products.where(kind: params["kind"])
        #end

        #record the recent clicks
        session["history"] ||= []
        session["history"] << @store.id
        
        
    end

    def edit
    	@store = Store.find_by(:id => params["id"])
    end

    def update
    	@store = Store.find_by(:id => params["id"])
    	@store.name = params[:name]
    	@store.kind = params[:kind]
    	@store.photourl = params[:photourl]
    	@store.description = params[:description]
    	@store.contact_info = params[:contact_info]
        @store.open_date = params[:open_date]
        @store.is_featured =params[:is_featured]
    	@store.save
    	redirect_to "/stores/#{@store.id}"
    end

    def destroy
    	@store = Store.find_by(:id => params["id"])
    	@store.delete
    	redirect_to "/"
    end

end