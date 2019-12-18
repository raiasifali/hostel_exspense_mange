class CreateExspensePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :exspense_payments do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :paid_amount

      t.timestamps
    end
  end
end
