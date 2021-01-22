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
    
    end

    def update 
        @pet = Pet.find(params[:id])
        @pet.update(pet_params)
        redirect_to user_path(current_user)

    end

    def delete 

        Pet.find(params[:id]).destroy 
        redirect_to user_path(current_user)
        
    end

    private

    #belongs to owner 

    def pet_params 
        params.require(:pet).permit(:name, :age, :size)
    end
end
