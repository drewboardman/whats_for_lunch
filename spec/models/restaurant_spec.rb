require 'spec_helper' 

describe Restaurant do
  describe 'instantation' do
    let!(:restaurant) {build(:restaurant)}

    it 'instantiates a restaurant object' do
      expect(restaurant.class.name).to eq("Restaurant")
    end
  end
end