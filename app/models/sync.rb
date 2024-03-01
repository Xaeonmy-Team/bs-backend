class Sync < ApplicationRecord
    belongs_to :artist
    belongs_to :user
    validates :user_id, :artist_id, :name, presence: true
end