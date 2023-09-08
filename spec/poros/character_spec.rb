require 'rails_helper'

RSpec.describe Character do
  it 'exists with attributes' do
    character_params = {
      affiliation: " Fire Nation Fire Nation military (formerly) Fire Nation Royal Family Jasmine Dragon Order of the White Lotus Spirit World",
      allies: ["Zuko", ""],
      enemies: ["Ozai"],
      id: "5cf5679a915ecad153ab6976",
      name: "Iroh",
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/c/c1/Iroh_smiling.png/revision/latest?cb=20130626131914" 
      }
  
      character = Character.new(character_params)

      expect(character).to be_a(Character)
      expect(character.name).to eq(character_params[:name])
      expect(character.allies).to eq(character_params[:allies])
      expect(character.enemies).to eq(character_params[:enemies])
      expect(character.affiliation).to eq(character_params[:affiliation])
      expect(character.photo).to eq(character_params[:photoUrl])
  end
end