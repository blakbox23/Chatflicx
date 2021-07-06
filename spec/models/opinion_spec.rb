require 'rails_helper'

RSpec.describe 'Opinion', type: :model do
    # it { is_expected.to validate_presence_of :text }

    let(:user) { User.create(email: 'p@gmail.com', username: 'jane', fullname: 'j Doe',  password: '123456')}
    it 'should belong to a user' do
        a = Opinion.reflect_on_association(:user)
        expect(a.macro).to eq(:belongs_to)
    end
    it 'should have many votes' do
        a = Opinion.reflect_on_association(:votes)
        expect(a.macro).to eq(:has_many)
    end

    # it 'is invalid without text' do
    #     expect(build(:opinion, text:nil)).to_not be_valid
    # end

       

end