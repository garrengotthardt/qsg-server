class AdSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :ad_categories
  has_many :categories, through: :ad_categories
end
