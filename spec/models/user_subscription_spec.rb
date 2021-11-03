require 'rails_helper'

RSpec.describe UserSubscription, type: :model do
  describe 'relationships' do
    it {should belong_to :user}
    it {should belong_to :subscription}
  end
end