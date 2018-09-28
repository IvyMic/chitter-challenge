feature 'view all peeps' do
  scenario 'user views all peeps in the database' do
    SetupDB.add_peeps
    visit '/peeps'
    expect(page).to have_content('test')
    expect(page).to have_content('test1')
    expect(page).to have_content('test2')
  end

  scenario 'user views peeps in reverse chronological order' do
    SetupDB.add_peeps
    visit '/peeps'
    expect(page).to have_content('test')
    expect(page).to have_content('test1')
    expect(page).to have_content('test2')
  end
end
