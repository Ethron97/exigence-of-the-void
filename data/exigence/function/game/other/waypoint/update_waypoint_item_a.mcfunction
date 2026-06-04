# Update transmission based on type
# Called from e_tick

## CONSTRAINTS
#   AS waypoint (armor stand)

## INPUT
#   SCORE #detecting game.state - updated by game_tick; 1 = at least one player has the detection effect
#   SCORE #active_on_same Temp - 1 = at least one player is on this waypoints' level

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Updating waypoint item A

# First, delete if this waypoints' linked entity is not within 1 block
scoreboard players operation #compare game.entity.waypoint_id = @s game.entity.waypoint_id
scoreboard players set #temp Temp 0
execute at @s as @e[tag=!Waypoint,scores={game.entity.waypoint_id=1..},distance=..1] if score @s game.entity.waypoint_id = #compare game.entity.waypoint_id run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 0 if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3) Cleaning up leftover waypoint
execute if score #temp Temp matches 0 run return run kill @s[type=minecraft:armor_stand,tag=Waypoint]
#----------------------------------------------------------------------------------------------------

# Return if tutorial
execute if score @s game.entity.object_level matches 10 run return 0
#----------------------------------------------------------------------------------------------------

function exigence:game/other/waypoint/update_waypoint_item_b
