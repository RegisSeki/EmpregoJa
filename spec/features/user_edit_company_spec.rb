require 'rails_helper'

feature 'User edit company' do
  scenario 'successfully'  do
    company = Company.create(name: 'Campus Code',
                             location: 'São Paulo',
                             mail: 'contato@campus.com.br',
                             phone: '2369-3476')


    visit edit_company_path(company)

    fill_in 'Nome', with: 'eduK'
    fill_in 'Local', with: 'Belo Horizonte'
    fill_in 'Email', with: 'banana@banana.com.br'
    fill_in 'Telefone', with: '5555-5555'

    click_on 'Atualizar'

    expect(page).to have_css('h1', text: 'eduK')
    expect(page).to have_content 'Belo Horizonte'
    expect(page).to have_content 'banana@banana.com.br'
    expect(page).to have_content '5555-5555'
  end


end
