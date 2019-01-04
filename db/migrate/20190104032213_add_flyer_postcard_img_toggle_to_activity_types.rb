class AddFlyerPostcardImgToggleToActivityTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :activity_types, :flyer_img_toggle, :string
    add_column :activity_types, :postcard_img_toggle, :string
  end
end
