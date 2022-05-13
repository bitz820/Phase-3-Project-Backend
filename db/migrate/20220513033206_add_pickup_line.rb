class AddPickupLine < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pickup_line, :string
  end
end
