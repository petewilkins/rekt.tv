feature 'Home Page videos' do
  scenario 'user can view existing videos on the videos page' do
    Video.create(url: 'https://www.youtube.com/watch?v=jamuLPfQibU', title: 'PREM by CUBE')

    visit('/videos')
    expect(page.status_code).to eq(200)

    expect(page).to have_content('PREM by CUBE')
  end
end
