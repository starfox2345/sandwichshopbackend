class Sandwichshop < ApplicationRecord
  belongs_to :city


  def city_name=(city_attribute)
    if !city_attribute.blank?
      self.city = City.find_or_create_by(name: city_attribute.downcase)
    end
  end

  def city_name
    self.city.name
  end

end
