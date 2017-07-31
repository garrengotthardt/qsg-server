class AdSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
end
