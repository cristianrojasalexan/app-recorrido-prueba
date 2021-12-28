module AvailabilityHelper
    
    def weekend_schedule
        ["10:00 - 11:00","11:00 - 12:00","12:00 - 13:00","13:00 - 14:00","14:00 - 15:00","15:00 - 16:00",
        "16:00 - 17:00","17:00 - 18:00","18:00 - 19:00","19:00 - 20:00", "20:00 - 21:00", "21:00 - 22:00", 
        "22:00 - 23:00", "23:00 - 00:00"]
    end
    
    def week_schedule
        ["19:00 - 20:00", "20:00 - 21:00", "21:00 - 22:00", "22:00 - 23:00", "23:00 - 00:00"]
    end

    def beginning_of_the_week(date)
        (Time.now + ((date.strftime('%V').to_i) * 7).days).beginning_of_week
    end

    def end_of_the_week(date)
        (Time.now + ((date.strftime('%V').to_i) * 7).days).end_of_week
    end

    def get_time_weekend(date, time)
        date += 19.hour + time.hour
    end

    def get_time_week(date, time)
        date += 10.hour + time.hour
    end
end
