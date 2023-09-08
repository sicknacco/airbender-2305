class CharacterFacade
  def self.ppl_by_nation(nation)
    characters = AvatarService.nation_members(nation)
    characters.map do |character|
      Character.new(character)
    end
  end
end