class CreateActivitiesLocations < ActiveRecord::Migration
  def change
    create_table :activities_locations ,:id => false do |t|
      t.belongs_to :activity ,:null => false
      t.belongs_to :location ,:null => false
    end
  end
end
