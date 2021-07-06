require 'rails_helper'

RSpec.describe 'User', type: :model do
  it 'is not valid without an email' do
    user = User.new(password: '123456', fullname: 'pm', username: 'usname')
    expect(user.save).to be(false)
  end
  it 'is not valid without a password' do
    user = User.new(email: 'p@g.com', fullname: 'pm', username: 'us')
    expect(user.save).to be(false)
  end
  it 'is saves each field of the user' do
    user = User.new(email: 'p@gmail.com', password: '123456', fullname: 'John Doe')
    expect(user.fullname).to eql('John Doe')
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
