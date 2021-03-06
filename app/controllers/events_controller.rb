class EventsController < ApplicationController
    
    def index

        # @events = Event.all 

    end

    def new
        # @event = Event.new(listing_id: params[:location_id])
        # # @pets = Pet.all 

        if params[:listing_id] && @listing = Listing.find_by_id(params[:listing_id])

        # if @listing = Listing.find_by_id(params[:listing_id])
            # @pets = Pet.all 
            @event = @listing.events.build
        else 
            @error = "Listing does not exist" if params[:listing_id]
            # @event.pets = current_user.pets
            # @pets = Pet.all 
            @event = Event.new 
        end
   
    end

    def create

        @event = current_user.events.build(event_params)

        if @event.save

            flash[:notice] = "You successfully joined this upcoming event!"
            redirect_to "/listings"
        else 
            render :new 
        end

    end

    def edit

        @event = Event.find_by_id(params[:id])
       
    end

    def update 

        @event = Event.find_by_id(params[:id])
        @event.update(event_params)
        redirect_to user_path(current_user) 
    end

    def show 

        @event = Event.find_by_id(params[:id])
     
    end

    private 
    #belongs to user, pet, & listing 
    def event_params 
        params.require(:event).permit(:safety, :vaccinations, :listing_id, pet_ids:[])
    end

    # def self_event_denied?
    
    #     redirect_to listings_path, notice: "You can't send a event to yourself" if @event.listing.author == @event.user
    # end
end
