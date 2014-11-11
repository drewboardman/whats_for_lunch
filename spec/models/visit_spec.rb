require 'spec_helper' 

describe Visit do
  describe 'instantation' do
    let!(:visit) {build(:visit)}

    it 'instantiates a visit object' do
      expect(visit.class.name).to eq("Visit")
    end
  end
end