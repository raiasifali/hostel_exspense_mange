class AddBlanceToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Blance, :integer
  end
end
