require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(name: 'Apple', measurement_unit: 'grams', price: 3) }
  before { subject.save }

  it 'Food name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Food name should be Apple' do
    expect(subject.name).to eql 'Apple'
  end

  it 'Measurement unit should be present' do
    subject.measurement_unit = 'grams'
    expect(subject).to be_valid
  end

  it 'price should be present' do
    subject.price = 3
    expect(subject).to be_valid
  end
end
