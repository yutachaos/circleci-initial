require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users/:id" do
    before do
      @user = FactoryBot.create(:user, { name: 'test' })
      get user_path(@user)
      @json = JSON.parse(response.body)
    end

    it 'Return status code 200' do
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it 'Return value name is `test`' do
      expect(@json["name"]).to eq "test"
    end
  end
end


RSpec.describe "POST /users" , type: :request do
  it 'Return status code 201' do
    print @param
    post '/users', params: { user: FactoryBot.attributes_for(:user) }
    expect(response).to be_success
    expect(response.status).to eq 201
  end

  it 'User table record increases by 1' do
    expect { post '/users', params: { user: FactoryBot.attributes_for(:user) } }.to change(User, :count).by(1)
  end
end

