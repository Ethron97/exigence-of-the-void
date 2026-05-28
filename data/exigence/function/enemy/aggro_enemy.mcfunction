# Aggro this enemy onto the nearest living player on the same level

## CONSTRAINTS
#   AS enemy

#====================================================================================================

execute if score toggle.menace debug matches 1 if score debug.level debug matches 4.. run say (D4 Menace) Aggro enemy
execute if score toggle.enemy debug matches 1 if score debug.level debug matches 4.. run say (D4 Enemy) Aggro enemy

# Force team enemy
execute if entity @s[team=Player] run team join Enemy @s

execute unless score @s game.entity.object_level matches 1.. at @s run return run damage @s 0 minecraft:generic by @p[scores={dead=0},tag=ActivePlayer]
#----------------------------------------------------------------------------------------------------

execute if score @s game.entity.object_level matches 1 at @s run return run damage @s 0 minecraft:generic by @p[scores={dead=0,game.player.active_level=1},tag=ActivePlayer]
execute if score @s game.entity.object_level matches 2 at @s run return run damage @s 0 minecraft:generic by @p[scores={dead=0,game.player.active_level=2},tag=ActivePlayer]
execute if score @s game.entity.object_level matches 3 at @s run return run damage @s 0 minecraft:generic by @p[scores={dead=0,game.player.active_level=3},tag=ActivePlayer]
execute if score @s game.entity.object_level matches 4 at @s run return run damage @s 0 minecraft:generic by @p[scores={dead=0,game.player.active_level=4},tag=ActivePlayer]
