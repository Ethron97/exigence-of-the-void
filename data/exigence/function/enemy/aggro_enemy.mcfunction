# Aggro this enemy onto the nearest living player on the same level

## CONSTRAINTS
#   AS enemy

#====================================================================================================

# Force team enemy
execute if entity @s[team=Player] run team join Enemy @s

# Comarre object level
scoreboard players operation #compare game.entity.object_level = @s game.entity.object_level

# Get closest player on same level
execute as @a[scores={dead=0},tag=ActivePlayer] if score @s game.player.active_level = #compare game.entity.object_level run tag @s add Aggroing

# Damage to draw aggro
damage @s 0 minecraft:arrow by @p[tag=Aggroing]

# Remove local tag
tag @a[tag=Aggroing] remove Aggroing
