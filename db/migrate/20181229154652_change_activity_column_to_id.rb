class ChangeActivityColumnToId < ActiveRecord::Migration[5.1]
  def change
    rename_column :activities, :activity_type, :activity_type_id
  end
end
