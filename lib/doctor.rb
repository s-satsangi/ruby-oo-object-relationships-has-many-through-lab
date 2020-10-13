require_relative 'patient.rb'
require_relative 'appointment.rb'
require 'pry'

class Doctor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
    
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def patients
        #binding.pry
        appointments.map{|appointment| appointment.patient}
    end

    def self.all
        @@all
    end

end