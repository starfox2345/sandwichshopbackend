class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :state, :zipcode, :description
  has_many :sandwichshops
end
