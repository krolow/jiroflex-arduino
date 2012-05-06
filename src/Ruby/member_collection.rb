require "Jiroflex"

class Jiroflex::MemberAlreadyExistsError < StandardError ; end
class Jiroflex::MemberDoestNotExistsError < StandardError ; end

class Jiroflex::MemberCollection
  
  include Enumerable
  
  def initialize
    @members = Array.new
  end
  
  def add(member)
    if @members.include?(member)
        raise Jiroflex::MemberAlreadyExistsError
    end
        
    @members.push(member)
  end
  
  def edit(member)
    raise Jiroflex::MemberDoestNotExistsError unless @members.include?(member)
    
    @members[@members.index(member)] =  member
  end
  
  def get(username)
    return @members[username]
  end
  
  def each &block
    @members.each { |member|  block.call(member) }
  end
  
end
