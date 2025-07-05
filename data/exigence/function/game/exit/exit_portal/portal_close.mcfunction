# Called by exit_portal/tick when tickcounter reaches 0

## CONSTRAINTS
#   AS Player who didn't escape

#============================================================================================================

# Inform
tellraw @s {text:"You were unable to escape in time",color:"red"}

# Kill
kill @s

# Teleport to ember shop
execute at @e[type=minecraft:armor_stand,tag=EmberShop,limit=1] run teleport @s ~ ~ ~ ~ ~
