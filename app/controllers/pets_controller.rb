class PetsController < ApplicationController

    def index

        @pets = Pet.all 
        

    end
    
    def new

        @pet = Pet.new 
       

    end
    
    def create 

        @pet = Pet.create(pet_params)
        @pet.user_id = session[:user_id]

        if @pet.save
            redirect_to user_path(current_user)
        else
            render :new
        end
    end

    def show

        @pet = Pet.find(params[:id])
        
    end

    def edit 
        @pet = Pet.find(params[:id])
        authorized_to_edit?
    
    end

    def update 
        
        @pet = Pet.find(params[:id])
        @pet.update(pet_params)
        authorized_to_edit?
        redirect_to user_path(current_user)

    end

    def destroy  

        Pet.find(params[:id]).destroy 
        redirect_to user_path(current_user)
        
    end

    private

    #belongs to owner 

    def pet_params 
        params.require(:pet).permit(:name, :age, :size, :breed, :profile_pic, :gender)
    end

    def authorized_to_edit?

        redirect_to user_path(current_user), notice: "You are not authorized to edit" if !@pet || @pet.user != current_user 

    end
end
