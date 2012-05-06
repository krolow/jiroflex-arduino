require 'config'
require 'member'
require 'member_collection'
require 'rest'
require 'serial'
require 'daemon'
require 'jiroflex'

class Jiroflex::App
  
  attr_accessor :config
  
  def initialize(config)
    self.config = config
  end
    
  def start
    self.addMembers()
    daemon = Jiroflex::Daemon.new(
      @members,
      Jiroflex::Rest.new(config.rest()),
      Jiroflex::Serial.new(config.arduino()['port'], config.arduino()['baud'])
    )
    daemon.start()
  end
  
  def addMembers
    @members = Jiroflex::MemberCollection.new()
    
    self.config.members().each do |username, pin|
      @members.add(Jiroflex::Member.new(username, pin))
    end
  end
  
end

jiroflex = Jiroflex::App.new(
  Jiroflex::Config.new('config/jiroflex.yaml')
)

jiroflex.start