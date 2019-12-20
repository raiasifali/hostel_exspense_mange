class CreateDailyExsDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_exs_details do |t|
      t.references :user, null: false, foreign_key: true
      t.string :amount

      t.timestamps
    end
  end
end
