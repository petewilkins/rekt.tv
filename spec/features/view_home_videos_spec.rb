feature 'Home Page videos' do
  scenario 'user can visit home page' do
    visit('/')
    expect(page.status_code).to eq(200)
  end
end
