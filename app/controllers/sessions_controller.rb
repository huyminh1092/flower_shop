class SessionsController < ApplicationController

    def new
        
    end

    def create
        user = User.find_by name: params[:session][:name].downcase
        if user && user.authenticate(params[:session][:password])
            flash[:success] = "Login successfully"
            session[:current_user_id] = user.id
            redirect_to homes_path
        else
            flash[:danger] = "Invalid username or password"
            render :new
        end
    end

    def destroy
        session.delete :current_user_id
        redirect_to homes_path
    end
    
end
