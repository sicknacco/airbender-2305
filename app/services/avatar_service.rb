class AvatarService
  def self.nation_members(nation, page)
    # get_url("/api/v1/characters?affiliation=#{nation}&perPage=20&page=#{page}")
    get_url("/api/v1/characters?page=#{page}&affiliation=#{nation}")
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