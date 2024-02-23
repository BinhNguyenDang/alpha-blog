class SessionsController < ApplicationController

    def new
    end

    def create
        
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Welcome back, #{user.username}"
            redirect_to user_path(user)
        else
            flash.now[:warning] = "Incorrect login detail"
            render 'new', status: :unprocessable_entity
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end

end