# Converts ticks to seconds/minutes/hours

# SCOREBOARD
# tick_convert

# INPUT
# in.ticks

# OUTPUT
# out.s = Seconds
# out.m = Minutes
# out.h = Hours

#==========================================================================================================

scoreboard players operation out.s tick_convert = in.ticks tick_convert
scoreboard players operation out.s tick_convert /= 20 number
scoreboard players operation out.m tick_convert = out.s tick_convert
scoreboard players operation out.m tick_convert /= 60 number
scoreboard players operation out.h tick_convert = out.m tick_convert
scoreboard players operation out.h tick_convert /= 60 number
scoreboard players operation out.m tick_convert %= 60 number
scoreboard players operation out.s tick_convert %= 60 number
