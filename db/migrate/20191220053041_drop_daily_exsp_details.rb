class DropDailyExspDetails < ActiveRecord::Migration[6.0]
  def change
   drop_table :daily_exsp_details
  end
end
