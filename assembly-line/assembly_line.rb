class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate = @speed * 221
    success_rate = 0.0
    if @speed >= 1 and @speed <= 4
      success_rate = 1.0
    elsif @speed >= 5 and @speed <= 8
      success_rate = 0.9
    elsif @speed == 9
      success_rate = 0.8
    else
      success_rate = 0.77
    end
    return rate.to_f * success_rate
  end

  def working_items_per_minute
    tmp = self.production_rate_per_hour / 60
    return tmp.truncate
  end
end
