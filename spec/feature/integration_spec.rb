# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'with title, author, price, and date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'j.k. rowling'
    fill_in 'Price', with: '30'
    fill_in 'Date', with: '1997-01-01'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('j.k. rowling')
    expect(page).to have_content('30')
    expect(page).to have_content('1997-01-01')
  end
end