require 'rails_helper'

describe Trip do
  describe 'instance methods' do
    it '.total' do
      trip1 = Trip.create(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 20:12'))
      trail1 = trip1.trails.create(length: 4, name: 'bottle run', address: '24 Oak Street')
      trail2 = trip1.trails.create(length: 2, name: 'pizza pie', address: '50 Oak Street')

      expect(trip1.total).to eq(6)
    end
    it '.average' do
      trip1 = Trip.create(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 20:12'))
      trail1 = trip1.trails.create(length: 4, name: 'bottle run', address: '24 Oak Street')
      trail2 = trip1.trails.create(length: 2, name: 'pizza pie', address: '50 Oak Street')

      expect(trip1.average).to eq(3)
    end
    it '.longest' do
      trip1 = Trip.create(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 20:12'))
      trail1 = trip1.trails.create(length: 4, name: 'bottle run', address: '24 Oak Street')
      trail2 = trip1.trails.create(length: 2, name: 'pizza pie', address: '50 Oak Street')

      expect(trip1.longest).to eq(4)
    end
    it '.shortest' do
      trip1 = Trip.create(name: 'mytrip1', start_date: DateTime.parse('12/12/2015 12:12'), end_date: DateTime.parse('12/12/2015 20:12'))
      trail1 = trip1.trails.create(length: 4, name: 'bottle run', address: '24 Oak Street')
      trail2 = trip1.trails.create(length: 2, name: 'pizza pie', address: '50 Oak Street')

      expect(trip1.shortest).to eq(2)
    end
  end
end
