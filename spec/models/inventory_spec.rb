require 'rails_helper'

RSpec.describe Inventory, type: :model do
  subject { Inventory.new(user_id: 1, Name: 'inventory 1') }
  before { subject.save }

  it 'Food Name should be present' do
    subject.Name = nil
    expect(subject).to_not be_valid
  end

  it 'Name should be inventory 1' do
    expect(subject.Name).to eql 'inventory 1'
  end
end
