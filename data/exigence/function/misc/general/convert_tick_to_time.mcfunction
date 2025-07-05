# Converts ticks to seconds/minutes/hours

# SCOREBOARD
# TickConvert

# INPUT
# in.ticks

# OUTPUT
# out.s = Seconds
# out.m = Minutes
# out.h = Hours

#==========================================================================================================

scoreboard players operation out.s TickConvert = in.ticks TickConvert
scoreboard players operation out.s TickConvert /= 20 number
scoreboard players operation out.m TickConvert = out.s TickConvert
scoreboard players operation out.m TickConvert /= 60 number
scoreboard players operation out.h TickConvert = out.m TickConvert
scoreboard players operation out.h TickConvert /= 60 number
scoreboard players operation out.m TickConvert %= 60 number
scoreboard players operation out.s TickConvert %= 60 number
