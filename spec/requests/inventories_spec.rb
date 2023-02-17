require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  before(:example) do
    @user = User.create(name: 'ebu', email: 'test@test2.com', password: 'password', password_confirmation: 'password')
    @user.skip_confirmation!
    sign_in @user
    @inventory = Inventory.create(user_id: @user.id, Name: 'inventory 1')
  end
  describe 'GET /inventories' do
    it 'Get /inventory url template' do
      get '/inventories'
      expect(response).to have_http_status(200)
    end

    it 'render index template)' do
      get '/inventories'
      expect(response).to render_template(:index)
    end

    it 'render correct response body)' do
      get '/inventories'
      expect(response.body).to include('inventory 1')
    end
  end

  describe 'GET /foods/1' do
    it 'returns http success' do
      get "/inventories/#{@inventory.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'render correct response body)' do
      get "/inventories/#{@inventory.id}"
      expect(response.body).to include('inventory 1')
    end

    it 'render show template)' do
      get "/inventories/#{@inventory.id}"
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /inventories/new' do
    it 'returns http success' do
      get '/inventories/new'
      expect(response).to have_http_status(:ok)
    end
  end
end
