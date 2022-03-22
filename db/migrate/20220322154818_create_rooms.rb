class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :capacity
      t.integer :number
      t.integer :daily_price

      t.timestamps
    end
  end
end
