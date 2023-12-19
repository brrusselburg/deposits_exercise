class PaymentsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def index
    payments = Payment.all
    render json: payments
  end

  def show
    payment = Payment.find(params[:id])

    render json: payment
  end

  private

  def not_found
    render json: 'not_found', status: :not_found
  end
end
