# module Zomato  

#   class Adapter

#     api_key = "7ca5836b3109fa9a24db90a0e1e19f69"
#     BASE_URL = "https://developers.zomato.com/api/v2.1/cities?q=irvine&apiKey=#{api_key}"
#     BASE_URL = "https://developers.zomato.com/api/v2.1/restaurant"

#     def fetch_restaurants

#       restaurants = JSON.parse(RestClient.get(BASE_URL))

#       restaurants["results"].each do |restaurant|
#         @restaurant = Restaurants.new(name: restaurant[:name], loction: restaurant[:cities])
#       end 
#       @restaurant.save
#     end
#   end 
# end 

     