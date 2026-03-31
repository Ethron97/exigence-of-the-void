# When the player attempts to enter a room via a DOOR
# Handles flow logic based on state of the room(s), determines which instance for them to enter.

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Try enter item shop

# Make sure player has profile loaded
execute unless score @s profile.player.profile_id matches 1.. run return run function exigence:hub/item_shop/access/fail/no_profile
#----------------------------------------------------------------------------------------------------

# If CO-OP profile, check if co-op member is in the item shop
scoreboard players set #did_coop_enter Temp 0
#   OUTPUTS: #did_coop_enter Temp=1 current item shopper to follow
execute if score @s profile.player.coop_profile_id matches 1.. run function exigence:hub/item_shop/access/try_enter_coop
execute if score #did_coop_enter Temp matches 1 run return 0

# Shop is in use
execute positioned 0 153 0 if entity @n[type=marker,scores={hub.room.room_type=9},tag=RoomNode,distance=..1] at @s run return run function exigence:hub/item_shop/access/fail/in_use
#----------------------------------------------------------------------------------------------------

# Enter room as first player
function exigence:hub/item_shop/access/enter
