class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :desc
      t.datetime :date
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
