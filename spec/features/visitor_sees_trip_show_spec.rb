require 'rails_helper'

describe 'a visitor' do
  describe "visits trips show page" do
    it 'see a list of trails on trip and their attributes' do
      trip1 = Trip.create!(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 20:12'))
      trail1 = trip1.trails.create!(length: 4, name: 'bottle run', address: '24 Oak Street')
      trail2 = trip1.trails.create!(length: 2, name: 'pizza pie', address: '50 Oak Street')

      visit trip_path(trip1)
      expect(current_path).to eq(trip_path(trip1))
      expect(page).to have_content(trip1.name)
      expect(page).to have_content(trip1.start_date)
      expect(page).to have_content(trip1.end_date)
      expect(page).to have_content(trail1.length)
      expect(page).to have_content(trail1.name)
      expect(page).to have_content(trail1.address)
      expect(page).to have_content(trail2.length)
      expect(page).to have_content(trail2.name)
      expect(page).to have_content(trail2.address)
    end
  end
end