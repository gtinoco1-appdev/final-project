class AddToggletoActivityTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :activity_types, :cost_toggle, :integer
    add_column :activity_types, :length_toggle, :integer
    add_column :activity_types, :detail_toggle, :integer
    add_column :activity_types, :outcome_toggle, :integer
    add_column :activity_types, :contact_toggle, :integer
  end
end
