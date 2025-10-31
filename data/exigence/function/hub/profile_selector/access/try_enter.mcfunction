# When the player attempts to enter a room
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS player

#=============================================================================================================

# If sequence is maxed, return (all possible rooms full)
# TODO

# If there is not an available ProfileSelector node, create a new one
# TODO

# Select a random available ProfileSelector node
# Enter room as player, at selected node
#   TODO location/dimension bind
execute at @e[type=marker,tag=ProfileSelectorNode,sort=random,limit=1,tag=!Occupied] run function exigence:hub/profile_selector/access/enter
