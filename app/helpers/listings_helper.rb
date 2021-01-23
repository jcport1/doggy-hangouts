module ListingsHelper

    def authorized_to_edit_listing?(listing)

        listing.author == current_user 
       
    end 

    def self_request?(listing)

        listing.author == current_user

    end 

    def authored_by_user?(listing)

        listing.author == current_user 

    end
   
end
