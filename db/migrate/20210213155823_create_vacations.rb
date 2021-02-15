class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.string :date
      t.string :destination
      t.float :hotel_price
      t.float :airline_price
      t.belongs_to :airline, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
