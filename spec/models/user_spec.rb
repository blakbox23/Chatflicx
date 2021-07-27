require 'rails_helper'

RSpec.describe 'User', type: :model do
  it 'is valid only with all required attributes' do
    user1 = build(:user)
    expect(user1).to be_valid
  end
  it 'is not valid without an email' do
    user1 = build(:user, email: nil)
    expect(user1).to_not be_valid
  end
  it 'is not valid without a fullname' do
    user1 = build(:user, fullname: nil)
    expect(user1).to_not be_valid
  end
  it 'is not valid without a password' do
    user1 = build(:user, password: nil)
    expect(user1).to_not be_valid
  end
  it 'is not valid without a username' do
    user1 = build(:user, username: nil)
    expect(user1).to_not be_valid
  end
  it 'is saves each field of the user' do
    user = User.new(email: 'p@gmail.com', password: '123456', fullname: 'Jane Doe')
    expect(user.fullname).to eql('Jane Doe')
  end
  it 'has many opinions' do
    a = User.reflect_on_association(:opinions)
    expect(a.macro).to eq(:has_many)
  end
  it 'has many opinions' do
    a = User.reflect_on_association(:opinions)
    expect(a.macro).to eq(:has_many)
  end
  it 'has many votes' do
    a = User.reflect_on_association(:votes)
    expect(a.macro).to eq(:has_many)
  end
end
