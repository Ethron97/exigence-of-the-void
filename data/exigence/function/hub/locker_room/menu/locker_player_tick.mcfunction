# Handle interaction tp and get-looking update

## CONSTRAINTS
#   AS player

#====================================================================================================

#say Locker tick player

scoreboard players operation #compare career.player_id = @s career.player_id

# Mark interaction
execute at @s as @e[distance=..8,type=interaction,tag=LockerRoomInteraction] \
if score @s hub.entity.player_id = #compare career.player_id run tag @s add CurrentCheckingInteraction

# Teleport your interaction to player
execute at @s anchored eyes positioned ^ ^-0.5 ^ as @n[distance=..8,type=interaction,tag=CurrentCheckingInteraction] run tp @s ~ ~ ~

# Detect which item_display(s) the player is looking at
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/locker_room/menu/display/get_looking

# Reset interaction size if player are not looking
execute at @s as @s[scores={shop.player.looking_at_idid=0}] run data merge entity @n[distance=..3,type=interaction,tag=CurrentCheckingInteraction] {width:0.01,height:0.01}

# Remove local tag
execute at @s run tag @n[distance=..8,type=interaction,tag=CurrentCheckingInteraction] remove CurrentCheckingInteraction
