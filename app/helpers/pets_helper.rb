module PetsHelper

    def authorized_to_edit_pet?(pet)

        pet.user == current_user
       
    end 

end
