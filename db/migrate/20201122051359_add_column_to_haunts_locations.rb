class AddColumnToHauntsLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :haunts_locations, :address, :string
  end
end
