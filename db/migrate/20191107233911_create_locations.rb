class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.text :city_or_region
      t.text :country

      t.timestamps
    end
  end
end
