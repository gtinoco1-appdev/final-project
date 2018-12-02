class AddCaptionToFamilies < ActiveRecord::Migration[5.1]
  def change
  add_column :families, :caption, :text
  end
end
