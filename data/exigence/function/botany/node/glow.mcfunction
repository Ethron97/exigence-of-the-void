# Summon glowing block display on this bush

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

# DEBUG
execute if score toggle.berry debug matches 1 if score debug.level debug matches 3.. run say (D3 Berry) Glow

# Add tag
tag @s add BerryGlowing

# Summon block display
execute if score @s[tag=BerryNode] Random matches 1 at @s align x align z align y run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:glass"},Glowing:1b,Tags:["BerryGlow","NewBerryGlow"]}
execute if score @s[tag=BerryNode] Random matches 2..3 at @s align x align z align y run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:glass"},Glowing:1b,Tags:["BerryGlow","NewBerryGlow"]}

# Call data function (removes local tag)
execute as @e[type=minecraft:block_display,tag=NewBerryGlow,distance=..1] run function exigence:botany/node/glow_data