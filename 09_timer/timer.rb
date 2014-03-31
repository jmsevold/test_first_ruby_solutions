#default indices 0 2  4 hold numbers
class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    default = ['00',':','00',':','01']
    if @seconds < 59
      default[4] = padded(@seconds)
      default.join
    elsif @seconds >59 && @seconds < 3600
      default[2] = padded(@seconds / 60)
      default[4] = padded(@seconds % 60)
      default.join
    else
      hour = (@seconds / 3600)
      default[0] = padded(@seconds / 3600)
      default[2] = padded((@seconds / 60) % 60)
      default[4] = padded(@seconds % 60)
      default.join
    end
  end
end

def padded(seconds)
  if seconds < 10
    seconds = '0' + seconds.to_s
  else
    seconds = seconds.to_s
  end
end