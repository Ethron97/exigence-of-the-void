# Aggro this enemy onto the nearest living player on the same level

## CONSTRAINTS
#   AS enemy

#====================================================================================================

execute if score toggle.menace debug matches 1 if score debug.level debug matches 4.. run say (D4 Menace) Aggro enemy
execute if score toggle.enemy debug matches 1 if score debug.level debug matches 4.. run say (D4 Enemy) Aggro enemy

# Force team enemy
execute if entity @s[team=Player] run team join Enemy @s

execute unless score @s game.entity.object_level matches 1.. run return run damage @s 0 minecraft:generic by @p[scores={dead=0},tag=ActivePlayer]
#----------------------------------------------------------------------------------------------------

# Comarre object level
scoreboard players operation #compare game.entity.object_level = @s game.entity.object_level

# Get closest player on same level
execute as @a[scores={dead=0},tag=ActivePlayer] if score @s game.player.active_level = #compare game.entity.object_level run tag @s add Aggroing

# Damage to draw aggro
damage @s 0 minecraft:generic by @p[tag=Aggroing]

# Remove local tag
tag @a[tag=Aggroing] remove Aggroing
