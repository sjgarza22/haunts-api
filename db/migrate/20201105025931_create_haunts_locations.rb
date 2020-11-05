class CreateHauntsLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :haunts_locations do |t|
      t.string :city
      t.string :state
      t.string :state_abbrev
      t.float :latitude
      t.float :longitude
      t.references :haunts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
