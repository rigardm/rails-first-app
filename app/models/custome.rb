class Custome < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
