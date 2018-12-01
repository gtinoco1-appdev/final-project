class AddPhoto1ToFamilies < ActiveRecord::Migration[5.1]
  def change
  add_column :families, :photo, :string
  end
end
