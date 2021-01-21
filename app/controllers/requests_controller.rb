class RequestsController < ApplicationController

    def index

    end

    def new

        @request = Request.new 

    end

    def create

        @request = Request.create(request_params)
        @request.user_id = session[:user_id]
        #pet?

        if @request.save

            redirect_to "/listings"

        else 
            render :new 
        end

    end

    def edit 

    end

    def update
        
    end

    private 

    #belongs to user, pet, & listing 

    def request_params 
        params.require(:request).permit(:message, :date, :accept, :pet_id)
    end
end
