class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.integer :trip_id
      t.integer :budget
      t.integer :remaining
      t.integer :spent_money

      t.timestamps
    end
  end
end
