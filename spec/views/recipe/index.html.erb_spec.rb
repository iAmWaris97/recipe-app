require 'rails_helper'

RSpec.describe 'Recipe index page', type: :system do
  before(:example) do
    @user = User.create(name: 'ebu', email: 'test@test3.com', password: 'password', password_confirmation: 'password')
    @user.skip_confirmation!
    @user1 = User.create(name: 'ndorrh', email: 'test@test2.com', password: 'password', password_confirmation: 'password')
    @user1.skip_confirmation!
    sign_in @user

    @recipe1 = Recipe.create(name: 'recipe 1', preparation_time: 2, cooking_time: 3, description: 'Boil for 3 hours', public: true, user_id: @user.id)
    @recipe2 = Recipe.create(name: 'recipe 2', preparation_time: 4, cooking_time: 1, description: 'Keep cooking dev', public: true, user_id: @user.id)
  end

  describe 'the recipe index page' do
    it 'displays the displays the available recipes' do
      visit recipes_path
      expect(page).to have_content('recipe 1')
    end

    it 'shows the correct recipe' do
      visit recipes_path

      expect(page).to have_content('recipe 1')
      expect(page).to have_content('recipe 2')
    end

    it 'shows the recipe path when clicked' do
      visit recipe_path(@recipe1)
      expect(page).to have_current_path(recipe_path(@recipe1))
    end
  end
end
