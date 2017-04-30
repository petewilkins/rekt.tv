feature 'Adding videos' do
  scenario 'can add a new video' do
    visit '/videos/new'
    fill_in 'title', with: 'i49 Fragumentary'
    fill_in 'url', with: 'https://www.youtube.com/watch?v=5USIDoZleAk'
    click_button 'Add Video'

    expect(current_path).to eq '/videos'
    expect(page).to have_content 'i49 Fragumentary'
  end
end
