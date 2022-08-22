class Admin::ProductsController < ApplicationController
    before_action :set_product, only: :update

    def index
        @products = Product.all
    end

    def edit
        @product = Product.find params[:id]
    end

    def show
        @product = Product.find params[:id]
    end


    def new
        @product = Product.new
    end

    def create
       @product = Product.new product_params
       if @product.save
        flash[:success]="Save product successfully !"
        redirect_to admin_products_path
       else 
        flash[:danger]="Failure !"
        render :new
       end
    end

    def update
        @product.update product_params
    end

    def destroy
        @product = Product.find params[:id]
        @product.destroy
        redirect_to admin_products_path
    end

    

    
    private   
    def product_params
        params.require(:product).permit :name, :price, :quantity, :image, :category_id
    end

   

    def set_product
        @product = Product.find params[:id]
    end
end
