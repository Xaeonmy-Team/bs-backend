require 'rails_helper'

RSpec.describe "Syncs", type: :request do
  let(:user) { User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
      )
    }
  let (:artist) {Artist.create(
    name: "Lady Gaga",
    discography: "string",
    tours: "string",
    instagram: "string",
    spotify: "string",
    video: "string"
    )
  }
  describe "GET /index" do
    it 'gets a list of syncs' do
      Sync.create(name: 'Lady Gaga', user_id: user.id, artist_id: artist.id)
      get '/syncs'
      sync = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      
      expect(sync.last['name']).to eq('Lady Gaga')
      expect(sync.last['user_id']).to eq(user.id)

    end

   
  end
end
