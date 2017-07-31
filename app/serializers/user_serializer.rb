class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :image_url
  has_many :ads, foreign_key: "creator_id", serializer: AdCreatorSerializer
end
