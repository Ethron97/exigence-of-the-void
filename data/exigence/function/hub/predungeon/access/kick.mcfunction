# Handle player leaving the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Kicking from predungeon

tellraw @s [{text:"<< ",color:"red"},{text:"You were kicked from the Predungeon",color:"red"}]

tag @s remove Predungeon

execute in exigence:hub run tp @s 0.5 200.0 18.5
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
function exigence:profile/player/team/join

# Interaction gets removed on Unload room

# Handle scores
scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid
scoreboard players reset @s hub.player.room_id
scoreboard players reset @s DisableCurrencyWarning

function exigence:player/utility/armor/unbind_all_armor

# Teleport leftover items (insurance)
function exigence:player/utility/teleport_nearby_items_here_128