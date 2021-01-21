class ApplicationController < ActionController::Base

    def login_required

        if !logged_in? 
            redirect_to '/login', notice => "Login is required to see this page"
        end

    end

    def logged_in?

        #!! -> converts method to a boolean 
        !!current_user
    end

    def current_user 
        if sessions[:user_id]
            @current_user = User.find_by(sessions[:user_id])
            @current_user 
        else 
            false 
        end
    end
end
