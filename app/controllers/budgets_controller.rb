class BudgetsController < ApplicationController
	def new
		@budget = Budget.new
	end
	def create
		@budget = Budget.new budget_params 
		@budget.save
		redirect_to budget_path @budget.id
	end

	def show
		@budget = Budget.find params[:id]
	end

	def index
		@budgets = Budget.all.order("hotel ASC", "year DESC")
	end

	def destroy
		@budget =Budget.find(params[:id])
		@budget.destroy
		redirect_to budgets_path
	end

	def edit
		@budget =Budget.find(params[:id])
	end

	def update
        @budget = Budget.find(params[:id])
        
    	if @budget.update_attributes budget_params
            redirect_to budget_path(@budget)
        else
            render 'edit'
        end
    end




	private

	
	def budget_params 
 		params.require(:budget).permit(
 			:year, 
 			:hotel, 
 			:rooms_available, 
 			:rooms_sold, 
 			:average_room_rate, 
 			:room_sales, 
 			:food_sales, 
 			:beverage_sales, 
 			:telephone_sales, 
 			:other_sales,
 			:room_costs,
 			:food_costs,
 			:beverage_costs,
 			:telephone_costs,
 			:other_costs,
 			:ge_admin_and_general,
 			:ge_sales,
 			:ge_utilities,
 			:ge_repair_and_maintenance
 			 )
	end
end
