class ReportsController < ApplicationController
    before_action :current_user
    before_action :set_report, only: [:show, :edit, :update, :destroy]
    # before_action :get_animal

    def index
        if get_animal
            @reports = get_animal.reports
        
        end
             
           
    end
    
    def new
        #byebug
        
        # if get_animal
        #     @report = @animal.reports.build
        # end
        @report = @user.reports.build
    end

    def create
        # if get_animal
        #     @report = @user.get_animal.reports.build(report_params)
        #     if @report.save 
        #         redirect_to animal_path(@animal)
        #     end
        # else
            @report = @user.reports.build(report_params)
                if @report.save 
                    redirect_to user_path(@user)
                else
                    render :new
                end
        # end
    end

    def edit

    end

    def update

       if @report.update(report_params)
           redirect_to user_path(@user)
        
       else
           render :edit
          
       end
    end

    def destroy
       @report.destroy
       redirect_to user_path(@user)
    end

    def show
        @animal = get_animal
    end

    private

    def get_animal
        @animal = Animal.find_by(id: params[:animal_id])
    end
    
    def report_params
        params.require(:report).permit(:topic, :observations, :user_id, :animal_id, :query)
    end

    def set_report
        @report = @user.reports.find(params[:id])
    end
end