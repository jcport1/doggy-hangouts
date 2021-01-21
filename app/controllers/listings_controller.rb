class ListingsController < ApplicationController

    def index

        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @listings = @user.authored_listings 
        else 
            @error = "User not Found" if params[:user_id]
            @listings = Listing.all 
        end

    end

    def new

        @listing = Listing.new 

    end
    
    def create

        @listing = Listing.create(listing_params)
        @listing.author_id = session[:user_id]
        
        #pet id? 


            if @listing.save
                #redirect to a homepage or dashboard

                redirect_to listings_path 

            else 
                render :new 
            end

    end

    def show 
        @listing = Listing.find(params[:id])
    end

    #add validations 
    
    def edit

        @listing = Listing.find(params[:id])

    end

    def update 

        @listing = Listing.find(params[:id])
        @listing.update(listing_params)
        redirect_to user_listings_path(current_user)
       
        
    end

    private
    
    #belongs to author, pet
    def listing_params 
        params.require(:listing).permit(:title, :content, :pet_id, :user_id)
    end
end
