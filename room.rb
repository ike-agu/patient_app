require_relative 'patient'

class Room
  class CapacityReachedError < Exception; end
  attr_accessor :id

  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  def full?
    @capacity == @patients.length
  end

  def add_patient(patient)
    if full?
      fail CapacityReachedError, 'The room is full'
    else
      @patients << patient
      patient.room = self
    end
  end
end

room1 = Room.new(capacity: 2)

Melanie = Patient.new(name: 'Melanie Ekani', age: 32)
room1.add_patient(Melanie)
# puts 'Is the capacity of the rooms full?'
# puts room1.full? ? 'Yes, it is full' : 'No! it is not'
# puts "The patient is #{Melanie.name} and she is #{Melanie.age} years old"
Gozie = Patient.new(name: 'Gozie Nkiru', age: 30)
room1.add_patient(Gozie)

begin
  Ikenna = Patient.new(name: 'Ikenna franklin', age: 34)
  room1.add_patient(Ikenna)
rescue Room::CapacityReachedError
  puts "That's fine we wont add him"
end

puts 'Everything is awesome '
