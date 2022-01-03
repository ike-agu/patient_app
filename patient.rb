class Patient
  attr_reader :name, :cured, :age
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type] || "A"
  end

  def cure
    @cured = true
  end
end

ikenna = Patient.new({ name: 'ikenna', cured: true })
gozie = Patient.new({ name: 'Iyke strike', cured: false, blood_type: 'A' })
p ikenna
p gozie
