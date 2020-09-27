class AnimalsController < ApplicationController
    
    def index
        @animals = Animal.all
    end
    
    def new
        @animal = Animal.new
    end

    def create
        animal = Animal.new(animal_params)
        if @animal.save
            redirect_to animal_path(@animal)
        else
            render :new
        end
    end
    

    def show
        @animal = Animal.find_by(:id => params[:id])
    end


    
    private

    def animal_params
        params.require(:animal).permit(:name, :health_rating, :decreased_livelihood)
    end
end