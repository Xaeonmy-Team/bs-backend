class Sync < ApplicationRecord
    has_many :artist
    belongs_to :user
    validates :user_id, :artist_id, :name, presence: true
end