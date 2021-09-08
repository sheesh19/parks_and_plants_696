class Site < ApplicationRecord
  belongs_to :city

  # def city
  #   city_id = site.city_id
  #   City.find(city_id)
  # end
end
