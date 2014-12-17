class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
 	  t.string  :hotel
 	  t.integer :year
 	  t.integer :rooms_available
 	  t.integer :rooms_sold
 	  t.integer :average_room_rate 
 	  t.integer :room_sales
 	  t.integer :food_sales 
 	  t.integer :beverage_sales 
 	  t.integer :telephone_sales 
 	  t.integer :other_sales 
 	  t.string  :room_costs
 	  t.integer :food_costs
 	  t.integer :beverage_costs
 	  t.integer :telephone_costs
 	  t.integer :other_costs
 	  t.integer :ge_admin_and_general
 	  t.integer :ge_sales_and_marketing
 	  t.integer :ge_utilities
 	  t.integer :ge_repair_and_maintenance
 	  t.timestamps
    end
  end
end
