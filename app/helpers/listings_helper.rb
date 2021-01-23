module ListingsHelper

    def authorized_to_edit?(listing)

        listing.author == current_user 
       
    end 
   
end
