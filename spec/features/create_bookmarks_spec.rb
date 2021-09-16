feature 'adding a bookmark' do 
  scenario 'a user can add a bookmark to his bookmark list' do 
    visit('/')
    fill_in(:url, with: 'http://example.org')
    click_button('add')
    expect(page).to have_content 'http://example.org'
  end 
end 