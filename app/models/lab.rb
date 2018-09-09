class Lab < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_street?

  def address
    "#{street}, #{zipcode}, #{city}, #{country}"
  end

  def city_country
    "#{zipcode} #{city} - #{country}"
  end
end
