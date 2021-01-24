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

        @request = current_user.requests.build(request_params)
        
         

        if @request.save

            flash[:notice] = "Your request was sent!"

            redirect_to "/listings"

        else 
            render :new 
        end

    end

    def edit

        @request = Request.find_by_id(params[:id])
       

    end

    def update 

        @request = Request.find_by_id(params[:id])
        @request.update(request_params)
        
        redirect_to user_path(current_user)
        
    end

    def show 
        @request = Request.find_by_id(params[:id])
        
     
    end


    private 

    #belongs to user, pet, & listing 

    def request_params 
        params.require(:request).permit(:subject_line, :message, :date, :accept, :safety, :vaccination_valid, :pet_id, :listing_id)
    end

    # def self_request_denied?
    
    #     redirect_to listings_path, notice: "You can't send a request to yourself" if @request.listing.author == @request.user
        
    # end


end
