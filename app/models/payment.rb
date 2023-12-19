class Payment < ApplicationRecord
  belongs_to :tradeline

  after_create :update_tradeline_balance

  def valid_deposit?
    self.amount <= self.tradeline.amount ? true : (raise "Not a valid deposit amount. Please try again.")

    # some edge cases to account for + test: nil, 0, less than x amount (say, $1)
  end

  private

  def update_tradeline_balance
    tradeline.update_balance(self)
  end
end
