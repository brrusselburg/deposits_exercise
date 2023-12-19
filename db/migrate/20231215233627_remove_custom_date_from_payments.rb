class RemoveCustomDateFromPayments < ActiveRecord::Migration[7.1]
  def change
    remove_column :payments, :deposit_date
  end
end
