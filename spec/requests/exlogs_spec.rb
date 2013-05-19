require 'spec_helper'
require_relative '../user'

# describe "Exlogs" do
#   describe "GET /exlogs" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get exlogs_path
#       response.status.should be(200)
#     end
#   end
# end

describe User do
	before :each do
		@user = User.new "Name"
	end
	describe "#new" do 
		it "takes one parameter and returns a User object" do
			@user.should be_an_instance_of User
		end
	end
	describe "#name" do
		it "returns the correct name" do
			@user.name.should eql "Name"
		end
	end
end

describe "Addition" do
	it "one plus one should equal two" do
		(1 + 1).should eql 2
	end
end