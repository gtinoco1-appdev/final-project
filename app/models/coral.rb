# == Schema Information
#
# Table name: corals
#
#  id          :integer          not null, primary key
#  title       :string
#  family_id   :integer
#  location_id :integer
#  caption     :string
#  photo1      :string
#  photo2      :string
#  seller_id   :integer
#  price       :float
#  obo         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Coral < ApplicationRecord
  belongs_to :seller, :class_name => "User"
  has_many :likes, :dependent => :destroy
  has_many :comments, :class_name => "CoralComment", :dependent => :destroy
  belongs_to :family

  has_many :fans, :through => :likes, :source => :user

  validates :location_id, :numericality => {:less_than_or_equal_to => 99999}
  validates :location_id, :presence => true
  
  mount_uploader :photo1, Photo1Uploader
  
end


