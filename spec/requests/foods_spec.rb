require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  before(:example) do
    @user = User.create(name: 'ebu', email: 'test@test2.com', password: 'password', password_confirmation: 'password')
    @user.skip_confirmation!
    sign_in @user
    @food = Food.create(name: 'Apple', measurement_unit: 'grams', price: 3)
  end
  describe 'GET /foods' do
    it "Log's in user" do
      get root_path
      expect(response).to have_http_status(200)
    end

    it 'Get /foods url template' do
      get '/foods'
      expect(response).to have_http_status(200)
    end

    it 'render index template)' do
      get '/foods'
      expect(response).to render_template(:index)
    end

    it 'render correct response body)' do
      get '/foods'
      expect(response.body).to include('Apple')
    end
  end

  describe 'GET /foods/1' do
    it 'returns http success' do
      get "/foods/#{@food.id}"
      expect(response).to have_http_status(:ok)
    end

    it 'render correct response body)' do
      get "/foods/#{@food.id}"
      expect(response.body).to include('grams')
    end

    it 'render show template)' do
      get "/foods/#{@food.id}"
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /foods/new' do
    it 'returns http success' do
      get '/foods/new'
      expect(response).to have_http_status(:ok)
    end
  end
end
