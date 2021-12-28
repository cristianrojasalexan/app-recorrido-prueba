class AvailabilityController < ApplicationController
    def index
    end
    def create
        params[:availability].each do |date|
            if date.present? && date != "0"
                Availability.create(
                    users_id: current_user.id, 
                    start_time: Time.parse(date), 
                    end_time: Time.parse(date) + 1.hour,
                    date_full: DateTime.parse(date),
                    day_number_in_week: Date.parse(date).strftime("%u")
                    )
            end
        end
    end

    def select_week
        @week_selected = params[:data][:week].to_i
        respond_to do |format|
            format.js
        end
    end
end
