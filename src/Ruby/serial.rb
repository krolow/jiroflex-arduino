require "jiroflex"
require "rubygems"
require "serialport"

class Jiroflex::Serial
  
  def initialize(port, baud)
    @serial = SerialPort.new(port, baud)
  end
  
  def send(pin, value)
    puts pin.to_s + " " + value.to_s
  end
  
end