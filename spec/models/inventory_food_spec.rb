require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  subject { InventoryFood.new(inventory_id: 1, quantity: '3', food_id: 4) }
  before { subject.save }

  it 'Food quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'Quantity should be 3' do
    expect(subject.quantity).to eql '3'
  end

  it 'Food should be present' do
    expect(subject.food_id).to eql 4
  end

  it 'Inventory should be present' do
    expect(subject.inventory_id).to eql 1
  end
end
