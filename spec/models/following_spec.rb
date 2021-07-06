require 'rails_helper'

RSpec.describe 'Following', type: :model do
  it 'should belong to a follower' do
    a = Following.reflect_on_association(:follower)
    expect(a.macro).to eq(:belongs_to)
  end
  it 'should belong to a followed' do
    a = Following.reflect_on_association(:followed)
    expect(a.macro).to eq(:belongs_to)
  end
end
