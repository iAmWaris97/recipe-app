require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'oswald', email: 'test@gmail.com', encrypted_password: 'bjfodfnwfncwodnwodwvcb') }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should be oswald' do
    expect(subject.name).to eql 'oswald'
  end

  it 'email should be oswald' do
    expect(subject.email).to eql 'test@gmail.com'
  end

  it 'encrypted_password should be oswald' do
    expect(subject.encrypted_password).to eql 'bjfodfnwfncwodnwodwvcb'
  end
end
