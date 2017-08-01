class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :ad_categories
  has_many :ads, through: :ad_categories
end
