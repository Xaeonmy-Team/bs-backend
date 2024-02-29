class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :discography
      t.string :tours
      t.string :instagram
      t.string :spotify
      t.string :video

      t.timestamps
    end
  end
end
