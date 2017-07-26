class SaverAd < ApplicationRecord
  belongs_to :saver, class_name: "User", :foreign_key => :saver_id
  belongs_to :saved_ad, class_name: "Ad", :foreign_key => :saved_ad_id
end
