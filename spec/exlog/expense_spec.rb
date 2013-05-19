require 'expense'

describe Expense do
	before :each do
		@expense = Expense.new "Breakfast at Tiffany's"
	end
	describe "#new" do
		it "should be an instance of Expense" do
			@expense.should be_an_instance_of Expense
		end
	end
end