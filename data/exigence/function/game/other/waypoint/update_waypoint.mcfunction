# Update transmission based on type
# Called from e_tick

## CONSTRAINTS
#   AS waypoint (armor stand)
#       tag=Waypoint

## INPUT
#   SCORE #detecting game.state - updated by game_tick; 1 = at least one player has the detection effect

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4) Updating waypoint generic

# Save waypoint object level
scoreboard players operation #compare game.entity.object_level = @s game.entity.object_level

# Store whether at least one player is on active level
scoreboard players set #active_on_same Temp 0
execute as @a[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=ActivePlayer,scores={dead=0}] if score \
@s game.player.active_level = #compare game.entity.object_level run scoreboard players set #active_on_same Temp 1

## SWITCH
execute if entity @s[tag=Item] run return run function exigence:game/other/waypoint/update_waypoint_item_a
execute if entity @s[tag=ExitPortal] run return run function exigence:game/other/waypoint/update/exit_portal
execute if entity @s[tag=Cart] run return run function exigence:game/other/waypoint/update/cart
execute if entity @s[tag=Beacon] run return run function exigence:game/other/waypoint/update/beacon
execute if entity @s[tag=VoidCache] run return run function exigence:game/other/waypoint/update/void_cache
# Level door