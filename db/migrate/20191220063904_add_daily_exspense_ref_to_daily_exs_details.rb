class AddDailyExspenseRefToDailyExsDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :daily_exs_details, :daily_exspense, foreign_key: true
  end
end
