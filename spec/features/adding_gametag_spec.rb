feature 'Adding Game-tag' do
  scenario 'I can add a single game-tag to a video' do
    visit '/videos/new'
    fill_in 'title', with: 'Highlander Challenge'
    fill_in 'url',   with: 'https://www.youtube.com/watch?v=NWrZVybyiU4'
    fill_in 'game',  with: 'TF2'
    click_button 'Add Video'

    video = Video.first
    expect(video.games.map(&:name)).to include('TF2')
  end
end
