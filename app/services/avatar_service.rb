class AvatarService
  def self.nation_members(nation)
    get_url("/api/v1/characters?affiliation=#{nation}&perPage=150")
  end

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end