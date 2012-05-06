require "jiroflex"
require "observer"

class Jiroflex::SerialNotifier
  
  def self.serial(serial)
    @@connection = serial
  end
  
  def update(member)
    puts 'updated'
    @@connection.send(member.pin, member.status)
  end
  
end