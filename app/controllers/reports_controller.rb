class ReportsController < ApplicationController
    before_action :current_user
    before_action :set_report, only: [:show, :edit, :update, :destroy]
    before_action :get_animal

    def index
        # if params[:animal_id]
        #     @animal = Animal.find_by(id: params[:animal_id])
        #end
            @reports = Report.all
            @user = current_user
    end
    
    def new
        # if params[:animal_id]
        #     @animal = Animal.find_by(id: params[:animal_id])
        # end
        @report = @user.reports.build
    end

    def create
        @report = @user.reports.build(report_params)
        if @report.save 
            redirect_to reports
        else
            render :new
        end
    end

    def edit
    end

    def update

       if @report.update(report_params)
           redirect_to user_reports_path(@user)
        
       else
           render :edit
          
       end
    end

    def destroy
       @report.destroy
       redirect_to user_reports_path(@user)
    end

    def show
    end

    private

    def get_animal
        @animal = Animal.find_by(id: params[:animal_id])
    end
    
    def report_params
        params.require(:report).permit(:topic, :observations, :user_id, :animal_id)
    end

    def set_report
        @report = @user.reports.find(params[:id])
    end
end