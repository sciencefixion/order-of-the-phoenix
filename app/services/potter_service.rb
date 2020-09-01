class PotterService

  def members_of_the_order(house)
    json("characters?orderOfThePhoenix=true&house=#{house}")
  end


  private

  def conn
    Faraday.new('https://www.potterapi.com/v1/') do |f|
      f.params[:key] = ENV['POTTER_API_KEY']
    end
  end

  def json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
