class AddFlyerPostcardImgToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :flyer_img, :string
    add_column :activities, :postcard_img, :string
  end
end
