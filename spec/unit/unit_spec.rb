# location: spec/unit/unit_spec.rb
require 'rails_helper'

# test date
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'j.k. rowling', price: '30', date: '1997-01-01')
  end

  it 'is valid with title, author, and price' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).not_to be_valid
  end
end