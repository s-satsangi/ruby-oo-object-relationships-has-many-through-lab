require_relative 'doctor.rb'
require_relative 'appointment.rb'

class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date, patient, doctor)
    
        @date = date
        @patient = patient
        @doctor = doctor

        @@all << self
    
    end

    def self.all
        @@all
    end
    
end