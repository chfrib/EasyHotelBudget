class Budget < ActiveRecord::Base

	def occupancy_rate
		(rooms_sold.to_f/rooms_available.to_f)
	end
end
