class AddCustomerRefToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :customer, foreign_key: true
  end
end
