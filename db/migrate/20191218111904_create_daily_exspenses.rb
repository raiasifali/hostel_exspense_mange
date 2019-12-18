class CreateDailyExspenses < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_exspenses do |t|
      t.string :description
      t.integer :totalamount
      t.string :time
      t.string :creaded_by
      t.string :status

      t.timestamps
    end
  end
end
