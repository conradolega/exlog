class Currency < ActiveRecord::Base
	has_many :expenses
	attr_accessible :name, :abbreviation
end