class User < ApplicationRecord
  has_many :ads, foreign_key: "creator_id", class_name: "Ad"
  has_many :saver_ads, foreign_key: "saver_id", class_name: "SaverAd"
  has_many :saved_ads, through: :saver_ads
  # has secure password
end
