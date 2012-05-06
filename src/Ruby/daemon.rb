require "jiroflex"
require "observer"
require "serial_notifier"

class Jiroflex::Daemon
  
  include Observable
  
  def initialize(members, rest, serial)
    @members = members
    @rest = rest
    Jiroflex::SerialNotifier::serial(serial)
  end
  
  def start
    while true:
      @members.each do |member|
        #puts member
        member.update(@rest.progress(member.username))
      end
      sleep(100);
    end
  end
  
end