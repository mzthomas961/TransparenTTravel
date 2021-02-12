class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end
