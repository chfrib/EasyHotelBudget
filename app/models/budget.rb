class Budget < ActiveRecord::Base

	def occupancy_rate
		float_to_percentage(rooms_sold/rooms_available)
	end

	def average_room_rate
		(room_sales/rooms_sold)
	end

	def total_sales
		(room_sales + food_sales + beverage_sales + telephone_sales + other_sales)
	end

	def room_revenue_per_room_occupied
		(room_sales/rooms_sold)
	end

	def food_revenue_per_room_occupied
		(food_sales/rooms_sold)	
	end

	def beverage_revenue_per_room_occupied
		(beverage_sales/rooms_sold)		
	end

	def telephone_revenue_per_room_occupied
		(telephone_sales/rooms_sold)
	end
		
	def other_revenue_per_room_occupied
		(other_sales/rooms_sold)
	end

	def	total_revenue_per_room_occupied
		(total_sales/rooms_sold)
	end

	def total_department_costs
		(room_costs + food_costs + beverage_costs + telephone_costs + other_costs)
	end

	def gross_operating_income
		(total_sales - total_department_costs)
	end

	def total_general_expenses
		(ge_admin_and_general + ge_sales_and_marketing + ge_utilities + ge_repair_and_maintenance)
	end

	def total_costs
		(total_department_costs + total_general_expenses)
	end

	def gross_operating_profit
		(total_sales - total_department_costs - total_general_expenses)
	end

	def room_sales_proportion
		float_to_percentage(room_sales/total_sales)
	end

	def food_sales_proportion
		float_to_percentage(food_sales/total_sales)
	end

	def beverage_sales_proportion
		float_to_percentage(beverage_sales/total_sales)
	end

	def telephone_sales_proportion
		float_to_percentage(telephone_sales/total_sales)
	end

	def other_sales_proportion
		float_to_percentage(other_sales/total_sales)
	end





	def room_revenue_per_room_occupied_proportion
		float_to_percentage(room_revenue_per_room_occupied/total_revenue_per_room_occupied)
	end

	def food_revenue_per_room_occupied_proportion
		float_to_percentage(food_revenue_per_room_occupied/total_revenue_per_room_occupied)
	end

	def beverage_revenue_per_room_occupied_proportion
		float_to_percentage(beverage_revenue_per_room_occupied/total_revenue_per_room_occupied)
	end

	def telephone_revenue_per_room_occupied_proportion
		float_to_percentage(telephone_revenue_per_room_occupied/total_revenue_per_room_occupied)
	end

	def other_revenue_per_room_occupied_proportion
		float_to_percentage(other_revenue_per_room_occupied/total_revenue_per_room_occupied)
	end



	def room_costs_proportion
		float_to_percentage(room_costs/room_sales)
	end

	def food_costs_proportion
		float_to_percentage(food_costs/food_sales)
	end

	def beverage_costs_proportion
		float_to_percentage(beverage_costs/beverage_sales)
	end

	def telephone_costs_proportion
		float_to_percentage(telephone_costs/telephone_sales)
	end

	def other_costs_proportion
		float_to_percentage(other_costs/other_sales)
	end

	def total_department_costs_proportion
		float_to_percentage(total_department_costs/total_sales)
	end

	def gross_operating_income_proportion
		float_to_percentage(gross_operating_income/total_sales)
	end




	def ge_admin_and_general_proportion
		float_to_percentage(ge_admin_and_general/total_sales)
	end

	def ge_sales_and_marketing_proportion
		float_to_percentage(ge_sales_and_marketing/total_sales)
	end

	def ge_utilities_proportion
		float_to_percentage(ge_utilities/total_sales)
	end

	def ge_repair_and_maintenance_proportion
		float_to_percentage(ge_repair_and_maintenance/total_sales)
	end

	def total_general_expenses_proportion
		float_to_percentage(total_general_expenses/total_sales)
	end

	def total_costs_proportion
		float_to_percentage(total_costs/total_sales)
	end

	def gross_operating_profit_proportion
		float_to_percentage(gross_operating_profit/total_sales)
	end

















	def float_to_2_decimals(float_value)
		float_value.round(2)
	end

	def float_to_percentage(float_value)
		float_to_2_decimals(float_value*100)
	end

	def realised?
		realised == 1
	end


end

