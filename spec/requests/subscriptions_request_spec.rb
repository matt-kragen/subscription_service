require 'rails_helper'

RSpec.describe "Subscription requests" do
  before :each do
    @customer1 = FactoryBot.create(:customer)
    @tea1 = FactoryBot.create(:tea)
  end

  describe "happy path" do
    describe 'POST /subscriptions' do

      it 'allows a customer to create a tea subscription' do
        subscription_params = {
          customer_id: @customer1.id,
          tea_id: @tea1.id,
          title: "Tea Subscription",
          price: 5.00,
          status: "Active",
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

    describe 'PATCH /subscriptions' do
      it 'can cancel an existing subscription' do
        subscription_params = {
          customer_id: @customer1.id,
          tea_id: @tea1.id,
          title: "Tea Subscription",
          price: 5.00,
          status: "Active",
          frequency: 1
        }
        subscription = Subscription.create(subscription_params)

        patch "/api/v1/customers/#{@customer1.id}/subscriptions/#{subscription.id}", params: {status: "Cancelled"}
        expect(response).to be_successful

        updated_subscription = JSON.parse(response.body, symbolize_names: true)
        expect(updated_subscription).to have_key(:data)
        expect(updated_subscription[:data]).to have_key(:type)
        expect(updated_subscription[:data]).to have_key(:attributes)
        expect(updated_subscription[:data][:attributes]).to have_key(:title)
        expect(updated_subscription[:data][:attributes]).to have_key(:price)
        expect(updated_subscription[:data][:attributes]).to have_key(:status)
        expect(updated_subscription[:data][:attributes]).to have_key(:frequency)
        expect(updated_subscription[:data][:attributes][:status]).to eq("Cancelled")
      end
    end
  end

  describe 'sad path' do
    describe 'POST /subscriptions' do
      it 'renders 422 error with invalid params' do
        subscription_params = {
          customer_id: @customer1.id,
          tea_id: @tea1.id,
          title: "Tea Subscription",
          price: 5.00,
          status: "Active"
          # Frequency is missing
        }
        post "/api/v1/customers/#{@customer1.id}/subscriptions", params: subscription_params
        expect(response).to_not be_successful
        
        errors = JSON.parse(response.body, symbolize_names: true)
        expect(response).to have_http_status(422)
        expect(errors).to have_key(:frequency)
        expect(errors[:frequency]).to eq(["can't be blank"])
      end
    end
  end
end