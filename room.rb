require_relative 'patient'

class Room
  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  def full?
    @capacity == @patients.length
  end

  def add_patient(patient)
    @patients << patient
    patient.room = self
  end
end

room1 = Room.new(capacity: 2)
puts 'Is the capacity of the rooms full?'
# puts room1.full? ? 'Yes, it is full' : 'No! it is not'

Melanie = Patient.new(name: 'Melanie Ekani', age: 32)

# puts "The patient is #{Melanie.name} and she is #{Melanie.age} years old"

room1.add_patient(Melanie)
p room1
p Melanie.room
