class AddPaymentsToTradeline < ActiveRecord::Migration[7.1]
  def change
    add_reference :payments, :tradeline
  end
end
