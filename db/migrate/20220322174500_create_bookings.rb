class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :arrival
      t.date :departure
      t.integer :total_price
      t.integer :guest_number

      t.timestamps
    end
  end
end
