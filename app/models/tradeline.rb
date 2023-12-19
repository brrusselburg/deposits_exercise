class Tradeline < ApplicationRecord
  has_many :payments

  def update_balance(payment)
    if payment.valid_deposit?
      self.amount -= payment.amount

      self.save!

      self.amount
    else
      raise "Not a valid deposit amount. Please try again."
    end
  end

  # def check_current_balance
  #   self.amount
  # end
  # opting out of this getter, as we're overwriting the 'amount' above
end
