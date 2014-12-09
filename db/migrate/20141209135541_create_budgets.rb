class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
 	  t.string  :hotel
 	  t.integer :year
 	  t.integer :rooms_available
 	  t.integer :rooms_sold
 	  t.timestamps
    end
  end
end
