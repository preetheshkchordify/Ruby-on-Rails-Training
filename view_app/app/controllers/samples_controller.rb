class SamplesController < ApplicationController
  def index
    uri = URI('http://localhost:3000/designations') # Replace with the URL of your API app
    response = Net::HTTP.get(uri)
    @data = JSON.parse(response)
  end

end
