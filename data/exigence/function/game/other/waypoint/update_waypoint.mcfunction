# Update transmission based on type
# Called from e_tick

## CONSTRAINTS
#   AS waypoint (armor stand)

## INPUT
#   SCORE #detecting game.state - updated by game_tick; 1 = at least one player has the detection effect

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Updating waypoint

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

# Save waypoint object level
scoreboard players operation #compare game.entity.object_level = @s game.entity.object_level

# Store whether at least one player is on active level
scoreboard players set #active_on_same Temp 0
execute as @a[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=ActivePlayer,scores={dead=0}] if score \
@s game.player.active_level = #compare game.entity.object_level run scoreboard players set #active_on_same Temp 1

## SWITCH
execute if entity @s[tag=Item] run return run function exigence:game/other/waypoint/update_waypoint_item

# Level door
# Beacon
# Exit portal