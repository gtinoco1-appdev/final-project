class AddCityToCorals < ActiveRecord::Migration[5.1]
  def change
     add_column :corals, :city, :string
  end
end
