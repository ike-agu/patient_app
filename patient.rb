class Patient
  attr_reader :name, :cured, :age
  attr_accessor :room

  def initialize(attributes = {})
    @name = attributes[:name]
    @age = attributes[:age]
    @cured = attributes[:cured] || false
    @blood_type = attributes[:blood_type] || "A"
  end

  def cure
    @cured = true
  end
end

ikenna = Patient.new({ name: 'ikenna', cured: false })
gozie = Patient.new({ name: 'Iyke strike', cured: false, blood_type: 'A' })
p ikenna
p gozie
