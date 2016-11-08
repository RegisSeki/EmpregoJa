require 'rails_helper'

feature 'visitor create category' do

  scenario 'successfully' do
    #setup

    # execucao
    visit new_category_path
    fill_in 'Nome', with: 'Estagio'
    click_on 'Salvar'
    # expectativa
    expect(page).to have_content 'Estagio'
  end

end
