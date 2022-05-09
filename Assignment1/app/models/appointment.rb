class Appointment < ApplicationRecord
    validates :appointment_date, presence: true
end
