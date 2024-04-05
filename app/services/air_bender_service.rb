class AirBenderService
   
  def conn 
    conn = Faraday.new("https://last-airbender-api.fly.dev/") do |faraday|
      faraday.headers['Accept'] = 'application/json'
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_nation_members(nation, name)
    affiliation = "#{nation}+#{name}" 
    get_url("/api/v1/characters?affiliation=#{affiliation}") 
  end
end