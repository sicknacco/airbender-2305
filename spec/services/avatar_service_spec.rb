require 'rails_helper'

RSpec.describe AvatarService do
  describe '#nation_members' do
    it 'returns a list of members of a nation', :vcr do
      characters = AvatarService.nation_members('fire nation')
      expect(characters).to be_an(Array)
      characters.each do |character|
        expect(character).to have_key(:_id)
        expect(character[:_id]).to be_a(String)
        expect(character).to have_key(:allies)
        expect(character[:allies]).to be_an(Array)
        expect(character).to have_key(:enemies)
        expect(character[:enemies]).to be_an(Array)
        expect(character).to have_key(:name)
        expect(character[:name]).to be_a(String)
        expect(character).to have_key(:affiliation)
        expect(character[:affiliation]).to be_a(String)
      end
    end
  end
end