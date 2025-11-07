# When the player attempts to enter a room via a DOOR
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS player

#=============================================================================================================

# If there is no available ProfileSelector node, fail

execute in exigence:hub positioned 999.5 128 6.5 store result score #temp Temp if entity @e[distance=..200,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=0}]
execute if score #temp Temp matches 0 run function exigence:hub/profile_selector/access/try_enter_door_fail
execute if score #temp Temp matches 0 run return 1

# TODO if a player enters profile selector while in a coop profile, and their
# coop buddy already has the chests loaded, we need to do a special swapper? or just not have any profile loaded?
#   because what if ALL of their profiles are coop profiles where their buddy has the chests loaded xD
#   We can't prevent it, because the profile selector is where settings are handled...
# Oh.. I think the ProfileSelector room the only room where the non-coop primary player can NEVER load the coop chests.
#   or we add a special case where its the only room where the chests are an optional load?
#   could the chests be an optional load in every room? Or would other rooms cease to function moreso than this one

# Enter room as player, at selected node
execute in exigence:hub positioned 999.5 128 6.5 at @e[distance=..200,type=marker,tag=ProfileSelectorNode,scores={hub.profile_selector_id=0},sort=random,limit=1] run function exigence:hub/profile_selector/access/enter
