require 'rails_helper'

feature 'User edit categories' do
  scenario 'successfully' do
    category = Category.create(name: 'Developer')

    visit edit_category_path(category)

    fill_in 'Nome', with: 'Intership'

    click_on 'Atualizar'

    expect(page).to have_content 'Intership'
  end
end
