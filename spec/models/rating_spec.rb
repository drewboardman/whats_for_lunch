require 'spec_helper' 

describe Rating do
  describe 'instantation' do
    let!(:rating) {build(:rating)}

    it 'instantiates a rating object' do
      expect(rating.class.name).to eq("Rating")
    end
  end
end