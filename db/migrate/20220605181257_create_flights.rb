class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departure_airport
      t.references :arrival_airport
      t.date :start_datetime
      t.date :flight_duration

      t.timestamps
    end
  end
end
