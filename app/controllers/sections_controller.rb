class SectionsController < ApplicationController

    def new
        @section = Section.new
    end

    def create
        @section = Section.new(section_params)
        @section.user_id = current_user.id
        if @section.save
            redirect_to section_path(@section)
        else
            render :new
        end
    end

    def show 
        @section =  Section.find_by(:id => params[:id])
    end

    private

    def section_params
        params.require(:section).permit(:name, :environment, :user_id)
    end
    
    #create all the actions so I can navigate through the views 
    #this includes creating links between views
end