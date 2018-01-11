require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'has a valid factory' do
    expect(user).to be_valid
  end

  it 'creates a valid user when given first and last name' do
    expect(user).to be_valid
  end

  it 'is not valid when the first name is missing' do
    user.first_name = nil

    expect(user).not_to be_valid
  end

  it 'will return false on saving when the last name is missing' do
    user.last_name = nil

    expect(user.save).to eq(false)
  end

  it 'will return false on saving when the email address is missing' do
    user.email = nil

    expect(user.save).to eq(false)
  end

  it 'will return "has already been taken" error on saving when email address is not unique' do
    user.save
    new_user = build(:user, email: user.email)
    new_user.valid?

    expect(new_user.errors[:email]).to include('has already been taken')
  end

  it 'has many tasks'

  it 'shows first and last name with the full_name method' do
    user = User.new(first_name: 'Anita', last_name: 'Mann')

    expect(user.full_name).to eq('Anita Mann')
  end
end