class AdCreatorSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :location, :image_url, :creator_id
end
