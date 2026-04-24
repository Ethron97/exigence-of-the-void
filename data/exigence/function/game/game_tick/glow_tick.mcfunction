# Called as entity with glow remaining

## CONSTRAINTS
#   #glowable (item, ravager, warden)

#====================================================================================================

# Reduce game.entity.glow_remaining
scoreboard players remove @s game.entity.glow_remaining 1

# For entities
execute if entity @s[type=!minecraft:item] run return run effect give @s minecraft:glowing 1 0 true
#----------------------------------------------------------------------------------------------------

# Toggle glow for items
execute as @e[scores={game.entity.glow_remaining=1..},nbt=!{Glowing:1b}] run data modify entity @s Glowing set value true
execute if score @s game.entity.glow_remaining matches 0 run data modify entity @s Glowing set value false
