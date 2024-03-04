require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "GET /index" do
    it 'gets a list of artosts' do
      Artist.create(
        name: 'Still Woozy',
    discography: 'https://www.allmusic.com/artist/still-woozy-mn0003891199#discography',
    tours: 'https://www.songkick.com/artists/9391869-still-woozy',
    instagram: 'https://www.instagram.com/still_woozy/?hl=en',
    spotify: 'https://open.spotify.com/artist/4iMO20EPodreIaEl8qW66y',
    video: 'https://www.youtube.com/watch?v=5UMCrq-bBCg&list=PLYbgbIXBJHRhrHgjGls97g6t3PtPJU7MN'
  )

  get 'artists'
  artist = JSON.parse(response.body)

  expect(response).to have_http_status(200)
  expect(artist.)
    end
  end
end