# Call from an enemey

# Force team enemy
execute if entity @s[team=Player] run team join Enemy @s

# Comarre object level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Get closets player on same level
execute as @a[tag=ActivePlayer,scores={dead=0}] if score @s game.player.active_level = #compare ObjectLevel run tag @s add Aggroing

# Damage to draw aggro
damage @s 0 minecraft:arrow by @p[tag=Aggroing]

# Remove local tag
tag @a[tag=Aggroing] remove Aggroing
