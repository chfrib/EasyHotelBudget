class AddCosts < ActiveRecord::Migration
  def change
  	add_column :budgets, :room_costs,:integer
  	add_column :budgets, :food_costs,:integer
  	add_column :budgets, :beverage_costs,:integer
  	add_column :budgets, :telephone_costs,:integer
  	add_column :budgets, :other_costs,:integer
  	add_column :budgets, :ge_admin_and_general,:integer
  	add_column :budgets, :ge_sales,:integer
  	add_column :budgets, :ge_utilities,:integer
  	add_column :budgets, :ge_repair_and_maintenance,:integer
  end
end
