class HomesController < ApplicationController

    def index
        @user = User.find_by id: session[:current_user_id]
    end

    def about
    end

    def findall

        @hoasinhnhat = Category.find(33)

        @hoacuoi = Category.find(34)

        @hoatinhyeu = Category.find(35)
        
        @hoatuoi = Category.find(36)
    end

    def productCategory
          
        @category = Category.find params[:id]
        @products = Product.where(category_id: @category.id)
       
    end

    private   
    def product_params
        params.require(:product).permit :name, :price, :quantity, :image, :category_id
    end

    private
    def category_params
        params.require(:category).permit :name, :image
    end



    
end
