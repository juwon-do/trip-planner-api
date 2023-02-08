class Place < ApplicationRecord
  belongs_to :trip
  # def coordinate
  #   results = Geocoder.search("#{address}")
    
  #   results.first.coordinates
  # end
end
