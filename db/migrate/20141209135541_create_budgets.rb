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
 	  
 	  t.timestamps
    end
  end
end
