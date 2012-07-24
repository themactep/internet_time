# The library add Swatch Internet Time capability to the standard Ruby Time class.
# Its usage is very straightforward:
#
#   require 'internet_time'
#   Time.now.to_beats  # => @234
#
require 'internet_time/version'

module InternetTime
end

class Time
  SECOND_PER_BEAT = 86.4  # Amount of seconds in a single .beat
  BMT_OFFSET_SEC = 3600   # Biel Mean Time offset to UTC in seconds

  # Time in Biel Mean Time (UTC+1)
  def bmt
    utc + BMT_OFFSET_SEC
  end

  # Time in .beats
  def to_beats
    time = bmt
    ((time.hour * 60 + time.min) * 60 + time.sec) / SECOND_PER_BEAT
  end
end
