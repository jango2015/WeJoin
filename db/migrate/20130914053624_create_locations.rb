class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.text :desc
      t.float :latitude
      t.float :longitude
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
