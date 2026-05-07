# Shared player-reset functions between loss and win
# Also called as interface if player gets kicked

## CONSTRAINTS
#   AS player

## OUTPUT
#   @s hub.coin_conversion
#   @s hub.coin_conversion.glint_owed
#   +coins.converting hub.coin_conversion

#====================================================================================================

say (D3) Leave dungeon

# Copy player cr_ scores to profile node t_ scores
# TODO

## TAGS
tag @s remove ActivePlayer
tag @s remove PrimaryPlayer
tag @s remove Carrying
tag @s remove Trial
tag @s remove Crucible
tag @s remove HandleInteracting
tag @s remove CurrentlyReflecting
tag @s remove Won

team leave @s
gamemode adventure @s
effect clear @a
stopsound @a ambient
title @a actionbar ""
title @a clear

# Display post game stats
function exigence:player/stats/run_stats

# Reset-reset scores
function exigence:scoreboard/generated_functions/reset_on_leave
function exigence:scoreboard/generated_functions/reset_on_death
function exigence:game/reset/reset_advancements

# Reset attributers
function exigence:player/utility/reset_attributes

# Clear all spellbound cards
function exigence:player/clear/all_spellbound

# Clear win items
clear @s #exigence:win_clear

# COIN CONVERSION
#   Clear gold nuggets and remember amount
execute store result score @s hub.coin_conversion run clear @s minecraft:gold_nugget
#   Get owed glint
scoreboard players operation @s hub.coin_conversion.glint_owed = @s hub.coin_conversion
scoreboard players operation @s hub.coin_conversion.glint_owed /= 5 number
#   Get leftover coins, add to collective
scoreboard players operation @s hub.coin_conversion.leftover_coins = @s hub.coin_conversion
scoreboard players operation @s hub.coin_conversion.leftover_coins %= 5 number
#   Add leftover to temp version so that if another player logged in/got kicked, it wouldn't increase their leftovers
scoreboard players operation #coins.leftover hub.coin_conversion += @s hub.coin_conversion.leftover_coins

# DEBUG
gamemode creative @s[tag=Admin]
effect give @s[tag=Admin] night_vision infinite 0 true

# This stuff is temp just to remove the room node; In the future the room node just gets migrated
#====================================================================================================
# Remove THIS player from room node
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #compare career.player_id run scoreboard players reset @s player.node.room_id
scoreboard players reset @s hub.player.room_id

# CHECK IF THERE ARE OTHER PLAYERS ON THE ROOM NODE
scoreboard players set #other_players Temp 0
#   If yes, earlyu return so we don't kill the room node/unload the room
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode,scores={player.node.room_id=1..}] if score @s player.node.room_id = #compare hub.player.room_id \
run scoreboard players set #other_players Temp 1

execute if score #other_players Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

# If this player was the last one, kill room node
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,tag=RoomNode] if score @s hub.room.room_id = #compare hub.player.room_id run kill @s
