require 'rails_helper'

RSpec.describe CharacterFacade do
  describe '#ppl_by_nation' do
    it 'returns an array of characters', :vcr do
      characters = CharacterFacade.ppl_by_nation('Fire Nation')

      expect(characters).to be_an(Array)
      expect(characters.first).to be_a(Character)
    end
  end
end