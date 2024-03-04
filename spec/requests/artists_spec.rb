require 'rails_helper'

RSpec.describe "Artists", type: :request do
  

  describe "GET /index" do
    it 'gets a list of artists' do
      artist = Artist.create(
        name: 'Taylor Swift',
        discography: 'https://www.allmusic.com/artist/taylor-swift-mn0000472102#discography',
        tours: 'https://www.songkick.com/artists/217815-taylor-swift',
        instagram: 'https://www.instagram.com/taylorswift/',
        spotify: 'https://open.spotify.com/artist/06HL4z0CvFAxyc27GXpf02?si=YGm40u2WSxSpfWJ6SZPfbw',
        video: 'https://www.youtube.com/watch?v=5UMCrq-bBCg&list=PLYbgbIXBJHRhrHgjGls97g6t3PtPJU7MN',
      )
      get '/artists'

      artist = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(artist.first['name']).to eq('Taylor Swift')
    end
  end
end
