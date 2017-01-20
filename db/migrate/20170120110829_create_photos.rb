class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :location_id, foreign_key: true
      t.string :url

      t.timestamps null: false
    end
  end
end
