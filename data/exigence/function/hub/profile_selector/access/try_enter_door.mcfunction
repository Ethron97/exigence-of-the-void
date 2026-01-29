# When the player attempts to enter a room via a DOOR
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS player

#====================================================================================================

# If there is no available ProfileSelector node, fail
execute in exigence:hub positioned 999.5 128 6.5 as @e[distance=..140,type=marker,tag=ProfileSelectorNode] run scoreboard players add @s hub.profile_selector_id 0
execute in exigence:hub positioned 999.5 128 6.5 store result score #temp Temp if entity @e[distance=..140,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=0}]
execute if score #temp Temp matches 0 run function exigence:hub/profile_selector/access/try_enter_door_fail
execute if score #temp Temp matches 0 run return 1
#----------------------------------------------------------------------------------------------------

# Enter room as player, at selected node
execute in exigence:hub positioned 999.5 128 6.5 at @e[distance=..140,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=0},sort=random,limit=1] run function exigence:hub/profile_selector/access/enter
