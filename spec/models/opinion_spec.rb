require 'rails_helper'

RSpec.describe 'Opinion', type: :model do

    # let(:user) { User.create(email: 'p@gmail.com', username: 'jane', fullname: 'j Doe',  password: '123456')}
    it 'should belong to a user' do
        a = Opinion.reflect_on_association(:user)
        expect(a.macro).to eq(:belongs_to)
    end
    it 'should have many votes' do
        a = Opinion.reflect_on_association(:votes)
        expect(a.macro).to eq(:has_many)
    end
    it 'only save opinions if they are not empty' do
        op = Opinion.new(text: 'sample opinion')
        expect(op.save).to be(true)
    end


    # it 'creates an opinion if all data is provided' do
    #     opinion = user.opinions.build(text: 'Sample opinion')
    #     expect(opinion.save).to eql(false)
    # end
       

end