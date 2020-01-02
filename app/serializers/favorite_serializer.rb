class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :podcast, :user
end
