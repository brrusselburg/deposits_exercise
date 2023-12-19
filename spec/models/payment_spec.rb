require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'valid_deposit?' do
    let(:tradeline) { FactoryBot.create :tradeline, amount: 1000.00 }
    let(:valid_payment) { FactoryBot.create :payment, tradeline_id: tradeline.id, amount: 250.00 }
    let(:invalid_payment) { FactoryBot.create :payment, tradeline_id: tradeline.id, amount: 1150.00 }

    it "returns true when the deposit is equal to or less than the tradeline amount" do
      expect(valid_payment.valid_deposit?).to be_truthy
    end

    it "raises an error when the deposit is greater than the tradeline amount" do
      expect{ response }.to raise_error
    end
  end
end
