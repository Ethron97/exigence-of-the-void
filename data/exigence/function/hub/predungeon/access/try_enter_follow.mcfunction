# When the player attempts to enter a room via a DOOR
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Try enter PRE DUNGEON follow-coop

# Make sure player has profile loaded
execute unless score @s profile.player.profile_id matches 1.. run return run function exigence:hub/predungeon/access/fail/no_profile
#----------------------------------------------------------------------------------------------------

# Make sure player is NOT in another room
execute if score @s hub.player.room_id matches 1.. run return run function exigence:hub/predungeon/access/fail/failed_to_follow_already_in_room
#----------------------------------------------------------------------------------------------------

# Add following tag
tag @s add Following

# If CO-OP profile, check if co-op member is in the predungeon
scoreboard players set #did_coop_enter Temp 0
#   OUTPUTS: #did_coop_enter Temp=1 current predungeoner to follow
execute if score @s profile.player.coop_profile_id matches 1.. run function exigence:hub/predungeon/access/try_enter_coop
execute if score #did_coop_enter Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

tag @s remove Following
function exigence:hub/predungeon/access/fail/failed_to_follow
