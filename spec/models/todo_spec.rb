require 'rails_helper'

RSpec.describe Todo, type: :model do
  before do
    @todo = FactoryBot.build(:todo)
  end

  it '正常系' do
    expect(@todo).to be_valid
  end

  it '100文字以下は登録する' do
    @todo.todo = Faker::Lorem.characters(number: 100)
    expect(@todo).to be_valid
  end

  it '101文字以上は登録しない' do
    @todo.todo = Faker::Lorem.characters(number: 101)
    @todo.valid?
    expect(@todo.errors.full_messages).to include('Todo is too long (maximum is 100 characters)')
  end

  it 'userなし' do
    @todo.user = nil
    @todo.valid?
    expect(@todo.errors.full_messages).to include('User must exist')
  end
end
