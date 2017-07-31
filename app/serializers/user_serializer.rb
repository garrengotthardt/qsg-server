class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  has_many :ads, foreign_key: "creator_id", serializer: AdCreatorSerializer
  has_many :saved_ads, through: :saver_ads
end
