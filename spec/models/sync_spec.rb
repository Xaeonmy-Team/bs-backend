require 'rails_helper'

RSpec.describe Sync, type: :model do
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
  it "should validate name" do
    sync = Sync.create(user_id: user.id, artist_id: artist.id)
    p user
    p artist
    p sync
    expect(sync.errors[:name]).to_not be_empty
  end

  it "should validate user_id" do
    sync = Sync.create(name: 'Lady Gaga', artist_id: artist.id)
    expect(sync.errors[:user_id]).to_not be_empty
  end

  it "should validate sync_id" do
    sync = Sync.create(name: 'Lady Gaga', user_id: user.id)
    expect(sync.errors[:artist_id]).to_not be_empty
  end
end

