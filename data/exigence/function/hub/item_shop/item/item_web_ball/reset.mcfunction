# called by game_reset to reset all

## CONSTRAINTS
#   IN minecraft:overworld
#   AT -300 0 -300

#====================================================================================================

# Kill snowballs and markers
kill @e[type=snowball,distance=..1000]
kill @e[type=minecraft:marker,tag=SnowballMarker,distance=..1000]

# Clear web markers/web
execute at @e[type=minecraft:marker,tag=WebBallWeb,distance=..1000] run fill ~ ~ ~ ~ ~ ~ air replace cobweb
kill @e[type=minecraft:marker,tag=WebBallWeb,distance=..1000]
