class ChangesToBudgets < ActiveRecord::Migration[7.0]
  def change 
    remove_column :budgets, :remaining, :integer
    remove_column :budgets, :spent_money, :integer

  end
end
