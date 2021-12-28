class AvailabilityController < ApplicationController
    def index
    end
    def create
        puts params
    end

    def select_week
        puts "-----------#{params[:data][:week]}"
        @week_selected = params[:data][:week].to_i
        respond_to do |format|
            format.js
        end
    end
end
