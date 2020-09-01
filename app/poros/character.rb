class Character
  attr_reader :role,
              :name,
              :house,
              :patronus

  def initialize(data)
    @role = data[:role]
    @name = data[:name]
    @house = data[:house]
    @patronus = data[:patronus]
  end

  private

  def search
    PotterService.new
  end
end
