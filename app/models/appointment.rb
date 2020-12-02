class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def readable
        d = self.appointment_datetime.to_s(:long).split(" ")
        "#{d[0]} #{d[1]} #{d[2]} at #{d[3]}"
    end
        
end
