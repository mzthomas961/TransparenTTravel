class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.belongs_to :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
