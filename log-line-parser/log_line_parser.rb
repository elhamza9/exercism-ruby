class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[1].strip
  end

  def log_level
    @line.split(':')[0].gsub(/[\[\]]/, '').downcase
  end

  def reformat
    msg = self.message
    level = self.log_level
    res = "#{msg} (#{level})"
    return res
  end
end
