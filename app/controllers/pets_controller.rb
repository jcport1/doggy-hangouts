class PetsController < ApplicationController

    def index

        @pets = Pet.all 

    end
    
    def new

        @pet = Pet.new 

    end
    
    def create 

        @pet = Pet.create(pet_params)

        if @pet.save
            redirect_to pet_path(@pet)
        else
            render :new
        end
    end

    def show

        @pet = Pet.find_by[params:id]
    end

    private

    def pet_params 
        params.require(:pet).permit(:name, :age, :size)
    end
end
