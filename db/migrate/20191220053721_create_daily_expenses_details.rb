class CreateDailyExpensesDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_expenses_details do |t|
      t.references :user, null: false, foreign_key: true
      t.references :daily_exspense, null: false, foreign_key: true
      t.string :amout
      t.boolean :status

      t.timestamps
    end
  end
end
