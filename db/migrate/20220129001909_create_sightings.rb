class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.datetime :date
      t.decimal :lattitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
