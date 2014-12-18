class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
 	  t.string  :hotel
 	  t.integer	:realised
 	  t.integer :year
 	  t.float :rooms_available
 	  t.float :rooms_sold
 	  t.float :average_room_rate 
 	  t.float :room_sales
 	  t.float :food_sales 
 	  t.float :beverage_sales 
 	  t.float :telephone_sales 
 	  t.float :other_sales 
 	  t.float :room_costs
 	  t.float :food_costs
 	  t.float :beverage_costs
 	  t.float :telephone_costs
 	  t.float :other_costs
 	  t.float :ge_admin_and_general
 	  t.float :ge_sales_and_marketing
 	  t.float :ge_utilities
 	  t.float :ge_repair_and_maintenance
 	  t.timestamps
    end
  end
end
