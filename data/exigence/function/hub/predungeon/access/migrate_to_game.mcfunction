# Called when player moves from predungeon to dungeon
# Cleans up predungeon specific attributes

## CONSTRAINTS
#   AS player

#====================================================================================================

#say (D3) migrate player to game

tag @s remove Predungeon
team leave @s
scoreboard players reset @s hub.player.consumable_limit
scoreboard players reset @s shop.player.looking_at_idid
scoreboard players reset @s DisableCurrencyWarning