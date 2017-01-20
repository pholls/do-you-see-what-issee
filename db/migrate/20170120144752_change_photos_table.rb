class ChangePhotosTable < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.rename :location_id, :position_id
    end
  end
end
