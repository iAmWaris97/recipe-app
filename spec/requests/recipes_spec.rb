require 'spec_helper'
require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  before (:example) do
    @user = User.create(name:'ebu', email: 'test@test2.com', password: "password", password_confirmation: "password")
    @user.skip_confirmation!
    sign_in @user
    @recipe = Recipe.create(name: 'recipe 1', preparation_time: 2, cooking_time: 3, description: 'Boil for 3 hours', public:true, user_id: @user.id)
  end
  describe "GET /recipes" do
   it "Log's in user" do
      get root_path
      expect(response).to have_http_status(200)
    end

    it "works! (now write some real specs)" do
      get '/recipes'
      expect(response).to have_http_status(200)
    end

    it "render index template)" do
      get '/recipes'
      expect(response).to render_template(:index)
    end

    it "render correct response body)" do
      get '/recipes'
      expect(response.body).to include('<a href="/recipes/new">New recipe</a>')
    end
  end

  describe 'GET /recipes/1' do
    it 'returns http success' do
      get "/recipes/#{@recipe.id}"
      expect(response).to have_http_status(:ok)
    end

    it "render correct response body)" do
      get "/recipes/#{@recipe.id}"
      expect(response.body).to include('Boil for 3 hours')
    end

    it "render show template)" do
      get "/recipes/#{@recipe.id}"
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /recipes/new' do
    it 'returns http success' do
      get "/recipes/new"
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /public_recipes' do
    it 'returns http success' do
      get "/public_recipes"
      expect(response).to have_http_status(:ok)
    end

    it "render public template)" do
      get "/public_recipes"
      expect(response).to render_template(:public)
    end
    it "render correct response body)" do
      get "/public_recipes"
      expect(response.body).to include('recipe 1')
    end
  end
end
