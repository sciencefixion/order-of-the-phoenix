class SearchResults
  def members(house)
    json = service.members_of_the_order(house)
    characters = json.map do |character_data|
      character_result(character_data)
    end
  end


  private

  def service
    PotterService.new
  end

  def character_result(data)
    Character.new(data)
  end
end
