class ApplicationController < ActionController::Base

    #this macro makes it a requirement for user to be logged in before granted access
    before_action :login_required 
    helper_method :current_user 
    helper_method :logged_in?

    def login_required

        if !logged_in? 
            redirect_to '/login', :notice => "Login is required to see this page"
        end

    end

    def logged_in?

        #!! -> converts method to a boolean 
        !!current_user
    end


    def current_user 
        if session[:user_id]
            @current_user = User.find(session[:user_id])
            @current_user 
        else 
            false 
        end
    end
end
