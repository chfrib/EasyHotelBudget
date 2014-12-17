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

	# Room Revenue Per Room Occupied =
	# Food Revenue Per Room Occupied =
	# Beverage Revenue Per Room Occupied =
	# Telephone Revenue Per Room Occupied =
	# Other Revenue Per Room Occupied =

end
