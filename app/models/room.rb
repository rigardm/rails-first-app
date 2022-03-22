class Room < ApplicationRecord
  has_many :bookings, dependant: :destroy
  belongs_to :hotel
end
