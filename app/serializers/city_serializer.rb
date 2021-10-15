class CitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :state, :zipcode, :description
  has_many :sandwichshops
end
