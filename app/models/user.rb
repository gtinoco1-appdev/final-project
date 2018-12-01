# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :corals, :foreign_key => "seller_id", :dependent => :destroy
  has_many :comments, :class_name => "CoralComment", :foreign_key => "commenter_id", :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :received_follow_requests, :class_name => "FollowRequest", :foreign_key => "recipient_id", :dependent => :destroy
  has_many :sent_follow_requests, :class_name => "FollowRequest", :foreign_key => "sender_id", :dependent => :destroy
  has_many :family_comments, :dependent => :destroy

  has_many :recipients, :through => :sent_follow_requests, :source => :recipient
  has_many :senders, :through => :received_follow_requests, :source => :sender
  has_many :liked_corals, :through => :likes, :source => :coral
end
