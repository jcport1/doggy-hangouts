class ListingsController < ApplicationController

    # before_action :set_listing, only: [:show, :edit, :update]

    def index

        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @listings = @user.authored_listings.order_by_post_date 
        else 
            @error = "User not Found" if params[:user_id]
            @listings = Listing.all.order_by_post_date
        end

    end

    def new

        @listing = Listing.new
        @listing.build_location 

    end
    
    def create

        @listing = Listing.create(listing_params)
        @listing.author_id = session[:user_id]
        
        # @listing.location_id = params[:listing][:location_id]
        if @listing.save
                redirect_to listings_path, notice: 'Listing was successfuly created.'
            else 
                @listing.build_location 
                render :new 
        end
    end

    def show 

        @listing = Listing.find(params[:id])
        
    end

    
    
    def edit

        @listing = Listing.find(params[:id])
        authorized_to_edit?

    end

    def update 

        @listing = Listing.find(params[:id])
        @listing.update(listing_params)
        authorized_to_edit? 
        redirect_to user_listings_path(current_user), notice: 'Listing was successfully updated.'
        
    end

    def destroy

        Listing.find(params[:id]).destroy
        redirect_to listings_path, notice: 'Listing was successfully destroyed'
        
    end

    def popular_event 

        @listings = Listing.event_with_most_rsvps
        
    end

    private
    
    def listing_params 

        params.require(:listing).permit(:title, :content, :date_time, :location_id, location_attributes: [:name])
        
    end

    def authorized_to_edit?

        redirect_to listings_path, notice: "You are not authorized to edit" if !@listing || @listing.author != current_user 

    end

    #dry method
    # def set_listing
    #     @listing = Listing.find_by(params[:id])
    #     redirect_to listings_path if !@listing
    # end
end
