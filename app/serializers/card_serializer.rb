class CardSerializer < ActiveModel::Serializer
  attributes :id, :suit, :nature, :sub_nature
end
