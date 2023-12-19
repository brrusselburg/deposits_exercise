require 'rails_helper'

RSpec.describe Tradeline, type: :model do
  describe 'update_balance' do
    let(:tradeline) { FactoryBot.create :tradeline, amount: 1000.00 }
    let(:payment) { FactoryBot.create :payment, tradeline_id: tradeline.id, amount: 250.00 }

    it 'returns the outstanding balance of the tradeline' do
      expect(tradeline.update_balance(payment)).to eq(750.00)
    end
  end
end
