class SessionsController < ApplicationController

    def welcome 

    end 

    def new


    end 

    def create 

        #find the user with params from form

        user = User.find_by(username: params[:username])

        #if user and password valid log them in 

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to listings_path, :notice => "You're Logged in!"
        else 
            flash[:error] = "Your login info was invalid"
            render :new
        end


    end 

    def destroy

        session.delete[params[:user_id]]

    end 


end