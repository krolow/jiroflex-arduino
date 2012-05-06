require "rubygems"
require "jiroflex"
require "rest_client"
require "json"

class Jiroflex::Rest
  
  attr_accessor :url
  
  def initialize(url)
    self.url = url
  end
  
  def progress(username)
    response = RestClient.get(self.url + '/progress/' + username)
    progress = JSON.parse(response.body)
    
    return progress['progress']
  end
  
end