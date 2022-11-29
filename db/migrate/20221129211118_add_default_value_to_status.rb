class AddDefaultValueToStatus < ActiveRecord::Migration[7.0]
  def change
    execute "UPDATE locations SET status = 0 WHERE status IS NULL;"
    change_column :locations, :status, :integer, null: false, default: 0
  end
end
