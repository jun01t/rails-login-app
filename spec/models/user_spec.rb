require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it '正常系' do
    expect(@user).to be_valid
  end
end
