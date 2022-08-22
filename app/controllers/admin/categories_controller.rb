class Admin::CategoriesController < ApplicationController
    extend ActiveSupport::Concern

    before_action :set_product, only: :update

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new category_params
        if @category.save
            flash[:success]="Save successfully !";
            redirect_to admin_category_path(@category)
        else 
            flash[:danger]="Failure !"
            render :new
        end
    end

    def update
       @category.update category_params
       redirect_to admin_categories_path
    end

    def show
       @category = Category.find params[:id]
    end

    def edit
       
      @category = Category.find params[:id]
    #   debugger
    end

    def destroy
        @category = Category.find params[:id]
        @category.destroy
        redirect_to admin_categories_path
    end


    def set_product
        @category= Category.find params[:id]
    end
    
    private
    def category_params
        params.require(:category).permit :name, :image
    end

end
