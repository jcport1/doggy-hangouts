class SessionsController < ApplicationController

    skip_before_action :login_required, :only => [:welcome, :new, :create]

    def welcome 

    end 

    def new


    end 

    #logs in User 

    def create 

        #find the user with params from form

        @user = User.find_by(username: params[:user][:username])

        #if user and password valid log them in 

        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to listings_path, :notice => "Welcome back!"
        else 
            flash[:error] = "Your login info was invalid"
            render :new
        end


    end 

    def destroy

        session.delete(:user_id)
        redirect_to '/', notice: "See you soon - woof! "

    end 


end