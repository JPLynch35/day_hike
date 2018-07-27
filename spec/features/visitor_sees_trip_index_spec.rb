require 'rails_helper'

describe 'a visitor' do
  describe "visits trips index page" do
    it 'sees a list of all trip names' do
      trip1 = Trip.create!(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 12:12'))
      trip2 = Trip.create!(name: 'mytrip2', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 12:12'))
      visit trips_path

      expect(page).to have_content('All Trips')
      expect(page).to have_content(trip1.name)
      expect(page).to have_content(trip2.name)
    end
    it 'can click the name of the trip and see the trip show page' do
      trip1 = Trip.create!(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 20:12'))
      trip2 = Trip.create!(name: 'mytrip2', start_date: DateTime.parse('12/20/2015 12:12'), end_date: DateTime.parse('12/20/2015 12:12'))
      visit trips_path

      click_on trip1.name
      expect(current_path).to eq(trip_path(trip1))
      expect(page).to have_content(trip1.name)
      expect(page).to have_content(trip1.start_date)
      expect(page).to have_content(trip1.end_date)
    end
  end
end
