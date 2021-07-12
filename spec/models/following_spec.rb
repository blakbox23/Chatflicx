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
  it 'should have both follower and followed ids' do
    following1 = build(:following)
    expect(following1).to be_valid
  end
  it 'should not be valid if follower is missing' do
    following1 = build(:following, follower_id: nil)
    expect(following1).to_not be_valid
  end
  it 'should not be valid if followed is missing' do
    following1 = build(:following, followed_id: nil)
    expect(following1).to_not be_valid
  end
end
