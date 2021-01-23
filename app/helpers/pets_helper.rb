module PetsHelper

    def authorized_to_edit?(pet)

        pet.user == current_user 
       
    end 
    
end
