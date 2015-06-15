# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

class SecretHandshake
  attr_accessor :code

  def initialize(code)
    @code = code.to_i
  end

  def commands
    if code / 10000 == 1
      @code = code % 10000
      commands.reverse
    elsif code / 1000 == 1
      @code = code % 1000
      commands << "jump"
    elsif code / 100 == 1
      @code = code % 100
      commands << "close your eyes"
    elsif code / 10 == 1
      @code = code % 10 
      commands << "double blink"
    elsif code == 1
      @code = code % 1
      commands << "wink"
    elsif code == 0
      []
    end
  end

end