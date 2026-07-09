# Handle player leaving the room

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Kicking from item shop

tag @s remove ItemShop
team leave @s

execute in exigence:hub run tp @s -16.5 200.0 0.5 -90 0
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# (Interaction got removed on Unload room)

scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid
scoreboard players reset @s hub.player.room_id