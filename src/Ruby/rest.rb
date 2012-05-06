require "rubygems"
require "jiroflex"
require "rest_client"
require "json"

class Jiroflex::Rest
  
  attr_accessor :url
  
  def initialize(url)
    @url = url
  end
  
  def progress(username)
    return true
    
    response = RestClient.get(url + '/progress/' + username)
    progress = JSON.parse(response.body)
    
    return progress['progress']
  end
  
end