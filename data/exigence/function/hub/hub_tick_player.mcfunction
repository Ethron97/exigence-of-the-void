# Player related general hub tick functions

## CONSTRAINTS
#   AS player

#====================================================================================================

# Give saturation/regen if they don't have it
effect give @s[predicate=!exigence:effects/saturation] saturation infinite 0 true
effect give @s[predicate=!exigence:effects/regeneration] regeneration infinite 200 true

# Update actionbar
function exigence:hub/hub_tick/update_actionbar

# Door checks for player warping throughout the hub
execute as @s[gamemode=!spectator] run function exigence:hub/player/check_door

# Increase hub tick score for profile (if they are in adventure mode)
execute as @s[gamemode=adventure] run scoreboard players add @s profile.hub_ticks 1

# Reduce menu cooldown
scoreboard players remove @s[scores={hub.player.interaction_cooldown=1..}] hub.player.interaction_cooldown 1

# Check for items
function exigence:hub/hub_tick/dropped_item/check_for_items

# Room ticks (part 1)
execute at @s[scores={hub.player.profile_selector_id=1..}] run function exigence:hub/profile_selector/menu/profile_menu_tick
execute at @s[scores={hub.player.locker_room_id=1..}] as @n[type=marker,scores={hub.locker_room_id=1..},tag=LockerRoomNode,distance=..6] at @s run function exigence:hub/locker_room/menu/locker_menu_tick
