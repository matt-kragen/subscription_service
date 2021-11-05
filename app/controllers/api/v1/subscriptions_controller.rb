class Api::V1::SubscriptionsController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id])
    tea = Tea.find(params[:tea_id])
    subscription = customer.subscriptions.new(subscription_params)
    if subscription.save
      render json: SubscriptionSerializer.new(subscription)
    else
      render json: subscription.errors, status: :unprocessable_entity
    end
  end

  private

  def subscription_params
    params.permit(:tea_id, :customer_id, :title, :price, :status, :frequency)
  end

end