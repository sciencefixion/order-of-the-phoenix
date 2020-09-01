class SearchResults
  def members(house)
    json = service.members_of_the_order(house)
    characters = json.map do |character_data|
      character_result(character_data)
    end
  end
  #
  # def movie_search_results(search_query)
  #   json = service.search_results(search_query)
  #   movies = json[:results].map do |movie_data|
  #     movie_result(movie_data)
  #   end
  #   movies.first(40)
  # end
  #
  # def details(movie_id)
  #   json = service.movie_data(movie_id)
  #   movie_result(json)
  # end


  private

  def service
    PotterService.new
  end

  def character_result(data)
    Character.new(data)
  end
end
