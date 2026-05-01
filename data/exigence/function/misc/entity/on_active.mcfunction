# Checks if there is any active player on the same level

## CONSTRAINTS
#   AS entity (entity with game.entity.object_level)

#====================================================================================================

execute if score @s game.entity.object_level matches 1 if entity @a[scores={dead=0,game.player.active_level=1},tag=ActivePlayer,limit=1] run return 1
execute if score @s game.entity.object_level matches 2 if entity @a[scores={dead=0,game.player.active_level=2},tag=ActivePlayer,limit=1] run return 1
execute if score @s game.entity.object_level matches 3 if entity @a[scores={dead=0,game.player.active_level=3},tag=ActivePlayer,limit=1] run return 1
execute if score @s game.entity.object_level matches 4 if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer,limit=1] run return 1
return 0
