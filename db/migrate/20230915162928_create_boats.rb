class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :size
      t.string :captain

      t.timestamps
    end
  end
end
