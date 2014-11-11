require 'spec_helper' 

describe User do
  describe 'instantation' do
    let!(:user) {build(:user)}

    it 'instantiates a user' do
      expect(user.class.name).to eq("User")
    end
  end
end

describe User do
  it 'returns an array of three restuarants' do

  end
end