require_relative '../spec_helper'

feature 'User creates a section' do
  scenario 'and is successful' do
    visit new_section_path

    fill_in 'Name', with: 'My section'
    click_button 'Create Section'

    expect(page).to have_css '.section-name'
    expect(page).to have_content 'My section'
  end

  scenario 'and has a validate error' do
    visit new_section_path

    fill_in 'Name', with: ''
    click_button 'Create Section'

    expect(page).to have_content "Name can't be blank"
  end
end
