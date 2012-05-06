require "jiroflex"
require "observer"
require "serial_notifier"

class Jiroflex::Member
  
  include Observable
  
  attr_accessor :username, :pin, :status
  
  def initialize(username, pin)
    self.username = username
    self.pin = pin
    self.status = false
    
    add_observer Jiroflex::SerialNotifier.new
  end
  
  def update(status)
    if (status != self.status)
      changed
      self.status = status
      notify_observers(self)
    end
  end
  
  def to_s
    return sprintf(
      "username: %s\npin: %s\nstatus: %s\n\n", 
      self.username, 
      self.pin, 
      self.status
    )
  end
  
end