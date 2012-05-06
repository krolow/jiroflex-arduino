require "jiroflex"
require "observer"

class Jiroflex::SerialNotifier
  
  def self.serial(serial)
    @@serial = serial
  end
  
  def update(member)
    puts 'updated'
    @@serial.send(member.pin, member.status)
  end
  
  class << self
      attr_accessor :ololo
  end
  
end