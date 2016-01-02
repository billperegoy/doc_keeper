require_relative '../spec_helper'

feature 'User creates a section' do
  scenario 'and is successful' do
    create_section 'My section'

    expect(page).to have_css '.section-name'
    expect(page).to have_content 'My section'
  end

  scenario 'and has a validate error' do
    create_section ''

    expect(page).to have_content "Name can't be blank"
  end

  def create_section(name)
    visit new_section_path
    fill_in 'Name', with: name 
    click_button 'Create Section'
  end
end
