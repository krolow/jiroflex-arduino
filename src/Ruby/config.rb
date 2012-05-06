require 'jiroflex'
require 'yaml'

class Jiroflex::Config
  
  attr_accessor :config
  
  def initialize(file)
    self.config = YAML.load_file(file)
  end
  
  def members
    return self.config['members']
  end
  
  def rest
    return self.config['rest']['url']
  end
  
  def arduino
    return self.config['arduino']
  end
  
  
end