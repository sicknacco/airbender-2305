require 'rails_helper'

RSpec.describe 'Search Index Page' do
  describe 'As a user' do
    it 'I can search for members of a nation', :vcr do
      visit '/'

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('Total Members: 97')
      within('#members') do
        expect(page).to have_content('Azula')
        expect(page).to have_content(["Ozai", "Zuko "])
        expect(page).to have_content(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
        expect(page).to have_content("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
        expect(page).to have_content('Banished servant')
      end
    end
  end
end