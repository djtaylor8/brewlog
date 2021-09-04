class UserSerializer < ActiveModel::Serializer
  has_many :entries
  attributes :id, :name, :entries 
end
