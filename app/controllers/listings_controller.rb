class ListingsController < ApplicationController

    def index

        @listings = Listing.all 

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
    
    def edit 

    end

    def update 
        
    end

    private
    
    #belongs to author, pet
    def listing_params 
        params.require(:listing).permit(:title, :content)
    end
end
