class Ad < ApplicationRecord
  # Ad <-> User relations
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :saver_ads, foreign_key: "saved_ad_id", class_name: "SaverAd"
  has_many :savers, through: :saver_ads

  # Ad <-> Tag relations
  has_many :ad_categories
  has_many :categories, through: :ad_categories
end
