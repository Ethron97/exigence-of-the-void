# Called when player moves from predungeon to dungeon
# Cleans up predungeon specific attributes

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) migrate player to game

tag @s remove Predungeon
team leave @s
scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid
scoreboard players reset @s DisableCurrencyWarning