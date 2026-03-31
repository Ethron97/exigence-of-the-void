# Handle player entering the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Entering item shop (COOP)

tag @s add ItemShop
team join ItemShop @s

tp @s ~-3 ~ ~
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
 
# Summon interaction
function exigence:hub/item_shop/node/setup_interaction

function exigence:hub/item_shop/refresh_currency

#====================================================================================================
# Assign room ids
execute in exigence:hub positioned 0 153 0 run scoreboard players operation #compare hub.entity.room_id \
= @n[distance=..1,tag=RoomNode,scores={hub.room.room_type=9}] hub.room.room_id
#   PLAYER
scoreboard players operation @s hub.player.room_id = #compare hub.entity.room_id
execute in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #compare hub.entity.room_id
