require 'rails_helper'

Rspec.describe Airport, :type => :model do
	it "is valid with valid attributes"
	expect(Airport.new).to be_valid
	it "is not valid without a code"
end
