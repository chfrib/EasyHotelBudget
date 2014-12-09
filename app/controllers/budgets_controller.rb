class BudgetsController < ApplicationController
	def new
		@budget = Budget.new
	end
	def create
		@budget = Budget.new 
		@budget.year = 2015
		@budget.hotel = "hotel centro madrid"
		@budget.rooms_available = 899
		@budget.rooms_sold = 599
		@budget.save
	end
end
