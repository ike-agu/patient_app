class Patient
  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured]
    @blood_type = attributes[:blood_type]
  end
end

ikenna =  Patient.new({name: 'ikenna', cured: false})
gozie = Patient.new({name: 'ikenna', cured: false, blood_type: 'A'})
p ikenna
p gozie
