
require 'csv'
require_relative 'patient'

class PatientRepository
  def initialize(csv_file, room_repository)
    @room_repository = room_repository
    @csv_file = csv_file
    @patients = []
    @next_id = 1
    load_csv
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end

  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    @next_id = 0
    CSV.foreach(@csv_file, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == 'true'
      room = @room_repository.find(row[:room_id])
      patient = patient.new(row)
      patient.room = room
      @patients << Patient.new(row)
      @next_id = row[:id]
    end
    @next_id += 1
  end
end

repo = PatientRepository.new('patients.csv')


 Betrand = Patient.new(name: 'Chijioke', age: 26)
 Michael = Patient.new(name: 'Chinedu', age: 30)

 repo.add(Betrand)
 repo.add(Michael)

 p repo
