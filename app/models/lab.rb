class Lab < ApplicationRecord
  # geocoded_by :address
  # after_validation :geocode

  def address
    "#{street}, #{zipcode}, #{city}, #{country}"
  end

  def city_country
    "#{zipcode} #{city} - #{country}"
  end
end
