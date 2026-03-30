# Handle player leaving the room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Kicking from predungeon

tag @s remove Predungeon

execute in exigence:hub run tp @s 0.5 200.0 18.5
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
team leave @s

# Interaction gets removed on Unload room

# Handle scores
scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid
scoreboard players reset @s hub.player.room_id
scoreboard players reset @s DisableCurrencyWarning