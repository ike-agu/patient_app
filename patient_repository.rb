class PatientRepository
  def initialize
    @patients = []
    @next_id = 1
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end
end

repo = PatientRepository.new

require_relative 'patient'
Betrand = Patient.new(name: 'Chijioke', age: 26)
Michael = Patient.new(name: 'Chinedu', age: 31)

repo.add(Betrand)
repo.add(Michael)

p repo
