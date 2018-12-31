class ChangeActivityTypeToInteger < ActiveRecord::Migration[5.1]
  def change
     change_column :activities, :activity_type_id, :integer
  end
end
