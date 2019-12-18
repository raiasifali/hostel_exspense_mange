class CreateDailyExspDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_exsp_details do |t|
      t.references :user, null: false, foreign_key: true
      t.references :daily_exspenses, null: false, foreign_key: true
      t.integer :amount
      t.boolean :is_paid

      t.timestamps
    end
  end
end
