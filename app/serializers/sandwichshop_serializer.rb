class SandwichshopSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :city_id, :city_name
  belongs_to :city
end
