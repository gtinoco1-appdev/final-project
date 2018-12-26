class AddLengthToActivities < ActiveRecord::Migration[5.1]
  def change
        add_column :activities, :length, :integer
  end
end
