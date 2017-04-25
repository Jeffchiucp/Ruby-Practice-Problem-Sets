# write a method that takes a floating point number that represnets the angle between 0 and 360
# It should return a string that represents the angle in degrees, minutes and seconds
# there are 60 minutes in a degree and 60 seconds in a minute
DEGREE = "\xC2\xB0"
SECONDS_PER_MINUTE = 60
MINUTES_PER_DEGREE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE

def dms(float_number)
  if float_number.negative?
    float_number = float_number.abs
  end
  total_seconds = (float_number * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(MINUTES_PER_DEGREE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
dms(-76.73)