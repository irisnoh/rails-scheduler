class AddLocationIdToWorkorder < ActiveRecord::Migration[6.0]
  def change
    add_column :workorders, :location_id, :integer
  end
end
