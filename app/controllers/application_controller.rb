class ApplicationController < ActionController::Base
    ## available in all controller
    helper_method :current_user, :logged_in? ## make the method also a helper

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])  
        end
    end

    def logged_in?
        !!current_user 
    end

end
