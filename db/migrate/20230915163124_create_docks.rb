class CreateDocks < ActiveRecord::Migration[7.0]
  def change
    create_table :docks do |t|
      t.string :unit
      t.integer :cost
      t.boolean :availability
      t.integer :boat_id
      t.string :dock_size

      t.timestamps
    end
  end
end
