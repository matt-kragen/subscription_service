require 'rails_helper'

RSpec.describe "Subscription requests" do
  describe "happy path" do
    describe 'POST /subscriptions' do
      before :each do
        @customer1 = FactoryBot.create(:customer)
        @tea1 = FactoryBot.create(:tea)
      end

      it 'allows a customer to create a tea subscription' do
        subscription_params = {
          customer_id: @customer1.id,
          tea_id: @tea1.id,
          title: "Tea Subscription",
          price: 5.00,
          status: "active",
          frequency: 1
        }
        post "/api/v1/customers/#{@customer1.id}/subscriptions", params: subscription_params
        expect(response).to be_successful
        
        subscription = JSON.parse(response.body, symbolize_names: true)
        expect(subscription).to have_key(:data)
        expect(subscription[:data]).to have_key(:type)
        expect(subscription[:data]).to have_key(:attributes)
        expect(subscription[:data][:attributes]).to have_key(:title)
        expect(subscription[:data][:attributes]).to have_key(:price)
        expect(subscription[:data][:attributes]).to have_key(:status)
        expect(subscription[:data][:attributes]).to have_key(:frequency)
      end
    end
  end
end