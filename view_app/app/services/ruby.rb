class ApiService
  include HTTParty

  base_uri 'http://localhost:3000' # the base URL of your API app

  def self.get_data
    get('/data') # the endpoint you defined in your API app
  end
end
