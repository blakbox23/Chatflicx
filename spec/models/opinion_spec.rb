require 'rails_helper'

RSpec.describe 'Opinion', type: :model do
  before(:all) do
    @user1 = build(:user)
  end
  it 'should belong to a user' do
    a = Opinion.reflect_on_association(:user)
    expect(a.macro).to eq(:belongs_to)
  end
  it 'should have many votes' do
    a = Opinion.reflect_on_association(:votes)
    expect(a.macro).to eq(:has_many)
  end
  it 'validates presence of text' do
    opinion1 = Opinion.new
    opinion1.text = ' '
    opinion1.validate
    expect(opinion1.errors[:text]).to include("can't be blank")
  end
end
