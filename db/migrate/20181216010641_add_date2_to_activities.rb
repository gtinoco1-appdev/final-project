class AddDate2ToActivities < ActiveRecord::Migration[5.1]
  def change
         add_column :activities, :date2, :date
  end
end
