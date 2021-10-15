class SandwichshopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :city_id, :naming, :city_name
  belongs_to :city
end
