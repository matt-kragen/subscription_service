require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationships' do
    it {should have_many :user_subscriptions}
  end
end