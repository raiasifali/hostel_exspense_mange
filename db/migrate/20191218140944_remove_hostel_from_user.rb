class RemoveHostelFromUser < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :hostels_id, :string
  end
end
