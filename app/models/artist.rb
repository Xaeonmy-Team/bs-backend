class Artist < ApplicationRecord
    validates :name, presence: true
    has_many :syncs
    belongs_to :user
end
