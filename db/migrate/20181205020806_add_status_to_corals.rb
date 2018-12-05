class AddStatusToCorals < ActiveRecord::Migration[5.1]
  def change
    add_column :corals, :status, :string
  end
end
