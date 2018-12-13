class AddStateToCorals < ActiveRecord::Migration[5.1]
  def change
     add_column :corals, :state, :string
  end
end
