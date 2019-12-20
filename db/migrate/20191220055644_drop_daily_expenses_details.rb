class DropDailyExpensesDetails < ActiveRecord::Migration[6.0]
  def change
  drop_table :daily_expenses_details
  end
end
