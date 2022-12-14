class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create 
        @user = User.new user_params
        # debugger
        if @user.save
            flash[:success]="Register success"
            redirect_to login_path
        else 
            flash[:danger]="Invalid email or password"
            render :new     
        end
    end

    private
    def user_params
        params.require(:user).permit :name, :email, :password, :password_confirmation
    end
end