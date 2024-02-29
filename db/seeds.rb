user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user3 = User.where(email: "test3@example.com").first_or_create(password: "password", password_confirmation: "password")
user4 = User.where(email: "test4@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_artist = [
  {
    name: 'Still Woozy',
    discography: 'https://www.allmusic.com/artist/still-woozy-mn0003891199#discography',
    tours: 'https://www.songkick.com/artists/9391869-still-woozy',
    instagram: 'https://www.instagram.com/still_woozy/?hl=en',
    spotify: 'https://open.spotify.com/artist/4iMO20EPodreIaEl8qW66y',
    video: 'https://www.youtube.com/watch?v=5UMCrq-bBCg&list=PLYbgbIXBJHRhrHgjGls97g6t3PtPJU7MN',
  }
]

user2_artist = [
  {
    name: 'Taylor Swift',
    discography: 'https://www.allmusic.com/artist/taylor-swift-mn0000472102#discography',
    tours: 'https://www.songkick.com/artists/217815-taylor-swift',
    instagram: 'https://www.instagram.com/taylorswift/',
    spotify: 'https://open.spotify.com/artist/06HL4z0CvFAxyc27GXpf02',
    video: 'https://www.youtube.com/watch?v=5UMCrq-bBCg&list=PLYbgbIXBJHRhrHgjGls97g6t3PtPJU7MN',
  }
]

user3_artist = [
  {
    name: 'Kid Cudi',
    discography: 'https://www.allmusic.com/artist/kid-cudi-mn0001011323#discography',
    tours: 'https://www.songkick.com/artists/2313347-kid-cudi',
    instagram: 'https://www.instagram.com/kidcudi/?hl=en',
    spotify: 'https://open.spotify.com/artist/0fA0VVWsXO9YnASrzqfmYu',
    video: 'https://www.youtube.com/watch?v=7xzU9Qqdqww&list=PLKPcGrckA1MEdcupZlGpOWR8-WcwOm8X0',
  }
]

user4_artist = [
  {
    name: 'Eminem',
    discography: 'https://www.allmusic.com/artist/eminem-mn0000157676#discography',
    tours: 'https://www.songkick.com/artists/182968-eminem',
    instagram: 'https://www.instagram.com/eminem/',
    spotify: 'https://open.spotify.com/artist/7dGJo4pcD2V6oG8kP0tJRR?si=uRqHklcDQZSPJ2L5fRWb0g',
    video: 'https://www.youtube.com/watch?v=wIQWRHJq_kE&list=PLbYmEyGNNePghezfWVqIW8Gi7dF2-fHM3',
  }
]

user1_artist.each do |artist_data|
    Artist.create artist_data
    puts "Creating artist #{artist_data[:name]}"
  end
  
  user2_artist.each do |artist_data|
    Artist.create artist_data
    puts "Creating artist #{artist_data[:name]}"
  end
  
  user3_artist.each do |artist_data|
    Artist.create artist_data
    puts "Creating artist #{artist_data[:name]}"
  end
  
  user4_artist.each do |artist_data|
    Artist.create artist_data
    puts "Creating artist #{artist_data[:name]}"
  end
  

