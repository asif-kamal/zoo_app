class ReportsController < ApplicationController

    def index
        @reports = Reports.all
    end
    
    def new
        @report = Report.new
    end

    def create
    end

    def show
    end

end