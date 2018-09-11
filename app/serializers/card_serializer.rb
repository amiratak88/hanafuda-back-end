class CardSerializer < ActiveModel::Serializer
  attributes :id, :suit, :type, :sub_type
end
