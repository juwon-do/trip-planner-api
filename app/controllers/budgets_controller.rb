class BudgetsController < ApplicationController
  def index
    budgets = Budget.all
    render json: budgets.as_json
  end

  def create
    budget = Budget.new(
      trip_id: params[:trip_id],
      budget: params[:budget],
      name: params[:name]
    )
    budget.save
    render json: budget.as_json
  end

  def destroy
    budget = Budget.find_by(id: params[:id])
    budget.destroy
    render json: budget.as_json
  end
end
