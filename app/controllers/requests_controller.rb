class RequestsController < ApplicationController

    def index

    end

    def new

        if params[:listing_id] && @listing = Listing.find_by_id(params[:listing_id])

            @request = @listing.requests.build

            

        else 

            @error = "Listing does not exist" if params[:listing_id]
            @request = Request.new 

        end

       
    end

    def create

        @request = Request.create(request_params)
        @request.user_id = session[:user_id]
    
        if @request.save

            flash[:notice] = "Your request was sent!"

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
        params.require(:request).permit(:message, :date, :accept, :pet_id, :listing_id)
    end
end
