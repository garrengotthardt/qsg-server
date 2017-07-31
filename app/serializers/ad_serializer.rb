class AdSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :title, :description, :image_url, :price
=======
  attributes :id, :title, :description, :price, :location, :image_url
>>>>>>> 24355cd86955b0386961ba922f1e34b744b058d6
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
end
