class CharacterFacade
  def self.ppl_by_nation(nation)
    page = 1
    characters = AvatarService.nation_members(nation, page)
    characters.map do |character|
      Character.new(character)
    end
  end
end