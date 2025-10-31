# called by game_reset to reset all

#====================================

# Kill snowballs and markers
kill @e[type=snowball]
kill @e[type=marker,tag=SnowballMarker]

# Clear web markers/web
execute at @e[type=marker,tag=WebBallWeb] run fill ~ ~ ~ ~ ~ ~ air replace cobweb
kill @e[type=marker,tag=WebBallWeb]
