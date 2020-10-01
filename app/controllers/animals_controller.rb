class AnimalsController < ApplicationController
    
    def index
        @animals = Animal.all
    end
    
    def new
        @animal = Animal.new
    end

    def create
        @animal = Animal.new(animal_params)
        if @animal.save
            redirect_to new_report_path
        else
            render :new
        end
    end
    

    def show
        @animal = Animal.find_by(:id => params[:id])
    end


    
    private

    def animal_params
        params.require(:animal).permit(:name, :health_rating, :section_id)
    end
end