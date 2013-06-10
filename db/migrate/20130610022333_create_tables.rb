class CreateTables < ActiveRecord::Migration
	def change
		create_table :expenses do |t|
			t.string :name
			t.float :cost
			t.timestamps
			t.references :currency
		end

		create_table :categories do |t|
			t.string :name
			t.timestamps
		end

		create_table :currencies do |t|
			t.string :name
			t.string :abbreviation
		end

		create_table :expenses_categories, :id => false do |t|
			t.integer :expense_id
			t.integer :category_id
		end
	end
end