class AddTechIdToWorkorder < ActiveRecord::Migration[6.0]
  def change
    add_column :workorders, :technician_id, :integer
  end
end
