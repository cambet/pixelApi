class Pixel < ApplicationRecord
    belongs_to :provider

    validates :provider_id, presence: true
end
