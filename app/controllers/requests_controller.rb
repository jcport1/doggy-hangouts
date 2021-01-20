class RequestsController < ApplicationController

    def index

    end

    def new

        @request = Request.new 

    end

    def create

        @request = Request.create(request_params)

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

    #needs user, pet, listing 

    def request_params 
        params.require(:request).permits(:message, :date, :accept)
    end
end
