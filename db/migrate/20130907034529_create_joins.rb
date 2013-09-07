class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.string :jid
      t.string :title
      t.text :desc
      t.timestamp :timestamp
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :joins, :jid
  end
end
