# require 'net/http'
# require 'uri'

# class Api < ActiveRecord::Base

#     def self.fetch(search)
#         uri = URI.parse(search)
#         request = Net::HTTP::Get.new(uri)
#         request["Accept"] = "application/json"
#         request["User-Key"] = "7ca5836b3109fa9a24db90a0e1e19f69"
#         req_options = {
#           use_ssl: uri.scheme == "https",
#         }
#         response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#           http.request(request)
#         end
#         binding.pry
#         JSON.parse(response.body)
#       end
   
# end


# API Key "7ca5836b3109fa9a24db90a0e1e19f69"
# @restaurants = Api.fetch(Search.linkify(params))