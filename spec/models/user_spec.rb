require 'spec_helper' 

# describe User do 
#   it "has a valid email"
#   it "has a valid password" 
#   it "returns an array of three restaurant objects"
#   it "returns a boolean true if you have been to a restaurant in the last day" 
#   it "returns a restaurant object from the top_three array"
# end

describe User do
  it 'returns an array of three restuarants' do
    # setup
    user = build(:user, first_name: 'Josh', last_name: 'Steiner')

    # excercise and verify
    expect(user.name).to eq 'Josh Steiner'
  end
end