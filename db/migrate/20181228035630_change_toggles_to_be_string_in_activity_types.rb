class ChangeTogglesToBeStringInActivityTypes < ActiveRecord::Migration[5.1]
  def change
      change_column :activity_types, :cost_toggle, :string
      change_column :activity_types, :detail_toggle, :string
      change_column :activity_types, :length_toggle, :string
      change_column :activity_types, :contact_toggle, :string
      change_column :activity_types, :outcome_toggle, :string
  end
end
