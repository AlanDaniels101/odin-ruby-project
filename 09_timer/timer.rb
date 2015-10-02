class Timer
  attr_accessor :seconds

  def initialize()
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def getH(time_in_s)
    time_in_s/60/60
  end

  def getM(time_in_s)
    time_in_s/60 % 60
  end

  def getS(time_in_s)
    time_in_s % 60
  end

  def time_string
    return ""+padded(getH(@seconds))+":"+padded(getM(@seconds))+":"+padded(getS(@seconds))
  end

  def padded(num)
    num = num.to_s
    if num.length == 2
      return num
    else
      num = "0"+num
    end
  end
end