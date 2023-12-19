class AddPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.decimal :amount, precision: 8, scale: 2, null: false
      t.datetime :deposit_date, null: false

      t.timestamps
    end
  end
end
