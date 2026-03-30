# Handle interaction tp and get-looking update

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say Locker tick player

scoreboard players operation #compare career.player_id = @s career.player_id

# Mark interaction
execute as @e[type=interaction,tag=LockerRoomInteraction,distance=..8] \
if score @s hub.entity.player_id = #compare career.player_id run tag @s add CurrentCheckingInteraction

# Teleport your interaction to player
execute anchored eyes positioned ^ ^-0.5 ^ as @n[type=interaction,tag=CurrentCheckingInteraction,distance=..8] run tp @s ~ ~ ~

# Detect which item_display(s) the player is looking at
scoreboard players operation #old_idid shop.player.looking_at_idid = @s shop.player.looking_at_idid
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/locker_room/menu/display/get_looking

# Reset interaction size if player are not looking
execute if score #old_idid shop.player.looking_at_idid matches 1.. if score @s shop.player.looking_at_idid matches 0 run data merge entity @n[type=minecraft:interaction,tag=CurrentCheckingInteraction,distance=..3] {width:0.01,height:0.01}

# Remove local tag
tag @n[type=interaction,tag=CurrentCheckingInteraction,distance=..8] remove CurrentCheckingInteraction
