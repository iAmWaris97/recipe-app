require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject {RecipeFood.new(quantity: '1', recipe_id: 3, food_id: 1)}
  before { subject.save }

  it 'Food quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'Quantity should be 3' do
    expect(subject.quantity).to eql '1'
  end

  it 'Food should be present' do
    expect(subject.food_id).to eql 1
  end

  it 'Inventory should be present' do
    expect(subject.recipe_id).to eql 3
  end
end
