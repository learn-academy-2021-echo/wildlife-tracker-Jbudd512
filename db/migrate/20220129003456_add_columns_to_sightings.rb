class AddColumnsToSightings < ActiveRecord::Migration[6.1]
  def change
    add_column :sightings, :sighting_id, :integer
  end
end