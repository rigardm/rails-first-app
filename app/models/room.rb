class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :hotel
end
