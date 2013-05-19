require_relative 'expense'

describe Expense do
	before :each do
		@expense = Expense.new "Breakfast at Tiffany's", Time.now
	end
	describe "#new" do
		it "should be an instance of Expense" do
			@expense.should be_an_instance_of Expense
		end
	end
	describe "#name" do
		it "should have a name" do
			@expense.name.should eql "Breakfast at Tiffany's"
		end
	end
	describe "#time" do
		it "should have a time" do
			@expense.time.should be_an_instance_of Time
		end
	end
end