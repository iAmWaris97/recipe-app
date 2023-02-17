require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { Recipe.new(name: 'recipe 1', preparation_time: 2, cooking_time: 3, description: 'Boil for 3 hours', public: true, user_id: 1) }
  before { subject.save }

  it 'Recipe name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should be inventory 1' do
    expect(subject.name).to eql 'recipe 1'
  end

  it 'Preparation time should be present and equal 2' do
    expect(subject.preparation_time).to eql 2
  end

  it 'Cooking time should be present and equal 3' do
    expect(subject.cooking_time).to eql 3
  end

  it 'Description should be present and equal 3' do
    expect(subject.description).to eql 'Boil for 3 hours'
  end

  it 'Should not be private recipe (public:false)' do
    expect(subject.public).to_not eql false
  end

  it 'User should be present' do
    expect(subject.user_id).to eql 1
  end
end
