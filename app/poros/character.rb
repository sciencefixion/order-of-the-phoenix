class Character
  attr_reader :id,
              :role,
              :name,
              :house,
              :patronus

  def initialize(data)
    @id = data[:id]
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
