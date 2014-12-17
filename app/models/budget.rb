class Budget < ActiveRecord::Base

	def occupancy_rate
		(rooms_sold.to_f/rooms_available.to_f)
	end

	def average_room_rate
		(room_sales.to_f/rooms_sold.to_f)
	end

	def total_sales
		(room_sales.to_f + food_sales.to_f + beverage_sales.to_f + telephone_sales.to_f + other_sales.to_f)
	end

	def room_revenue_per_room_occupied
		(room_sales.to_f/rooms_sold.to_f)
	end

	def food_revenue_per_room_occupied
		(food_sales.to_f/rooms_sold.to_f)	
	end

	def beverage_revenue_per_room_occupied
		(beverage_sales.to_f/rooms_sold.to_f)		
	end

	def telephone_revenue_per_room_occupied
		(telephone_sales.to_f/rooms_sold.to_f)
	end
		
	def other_revenue_per_room_occupied
		(other_sales.to_f/rooms_sold.to_f)
	end

	def	total_revenue_per_room_occupied
		(total_sales.to_f/rooms_sold.to_f)
	end

	def total_department_costs
		(room_costs.to_f + food_costs.to_f + beverage_costs.to_f + telephone_costs.to_f + other_costs.to_f)
	end

	def gross_operating_income
		(total_sales.to_f - total_department_costs.to_f)
	end

	def total_general_expenses
		(ge_admin_and_general.to_f + ge_sales_and_marketing.to_f + ge_utilities.to_f + ge_repair_and_maintenance.to_f)
	end

	def total_costs
		(total_department_costs.to_f + total_general_expenses.to_f)
	end

	def gross_operating_profit
		(total_sales.to_f - total_department_costs.to_f - total_general_expenses.to_f)
	end

	def room_sales_proportion
		float_to_percentage(room_sales.to_f/total_sales.to_f)
	end

	def food_sales_proportion
		float_to_percentage(food_sales.to_f/total_sales.to_f)
	end

	def beverage_sales_proportion
		float_to_percentage(beverage_sales.to_f/total_sales.to_f)
	end

	def telephone_sales_proportion
		float_to_percentage(telephone_sales.to_f/total_sales.to_f)
	end

	def other_sales_proportion
		float_to_percentage(other_sales.to_f/total_sales.to_f)
	end

	def float_to_2_decimals(float_value)
		float_value.round(2)
	end

	def float_to_percentage(float_value)
		float_to_2_decimals(float_value*100)
	end

end

