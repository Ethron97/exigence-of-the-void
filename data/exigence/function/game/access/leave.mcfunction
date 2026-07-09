# Shared player-reset functions between loss and win
# Also called as interface if player gets kicked

## CONSTRAINTS
#   AS player

## OUTPUT
#   @s hub.coin_conversion
#   @s hub.coin_conversion.glint_owed
#   +coins.converting hub.coin_conversion

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Leave dungeon

# Copy player cr_ scores to profile node t_ scores
# TODO

## TAGS
tag @s remove ActivePlayer
tag @s remove PrimaryPlayer
tag @s remove Carrying
tag @s remove Trial
tag @s remove Crucible
tag @s remove Game
tag @s remove HandleInteracting
tag @s remove CurrentlyReflecting
tag @s remove Won
tag @s remove PreviewingTeleport
tag @s remove ReduceHeighten

team leave @s
gamemode adventure @s
effect clear @a
stopsound @a ambient
title @a actionbar ""
title @a clear
scoreboard players reset @s game.player.player_number

# Set spawnpoint to Loss location
execute in exigence:hub run spawnpoint @s 0 200 0

# Unbind armor (remove Curse of Binding)
function exigence:player/utility/armor/unbind_all_armor

# Use armor (void armor)
execute unless score toggle.void debug matches 1 run function exigence:player/utility/armor/use_all

# Disable locator bar while in hub
attribute @s minecraft:waypoint_receive_range base set 0

# Display post game stats
function exigence:player/stats/run_stats

# Reset-reset scores
function exigence:scoreboard/generated_functions/reset_on_death
function exigence:scoreboard/generated_functions/reset_on_leave
function exigence:game/reset/reset_advancements

# Reset attributers
function exigence:player/utility/reset_attributes

# Clear all spellbound cards
function exigence:player/clear/all_spellbound

# Clear win items
clear @s #exigence:win_clear

# EMBERS
#   Clear embers and remember amount
execute store result score @s hub.player.embers_retrieved run clear @s minecraft:blaze_powder

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
#   Remove leftover from to_convert so that we don't get odd number
scoreboard players operation @s hub.coin_conversion -= @s hub.coin_conversion.leftover_coins

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run tellraw @s [{text:"(D3 Player) Coins to convert: "},{score:{name:"@s",objective:"hub.coin_conversion"}}]
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run tellraw @s [{text:"(D3 Player) Leftover: "},{score:{name:"@s",objective:"hub.coin_conversion.leftover_coins"}}]

# DEBUG
gamemode creative @s[tag=Admin]
effect give @s[tag=Admin] night_vision infinite 0 true
