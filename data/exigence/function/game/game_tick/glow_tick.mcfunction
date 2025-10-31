# Reduce game.entity.glow_remaining
scoreboard players remove @e[type=#exigence:glowable,scores={game.entity.glow_remaining=1..}] game.entity.glow_remaining 1

# For entities
effect give @e[type=#exigence:glowable_enemies,scores={game.entity.glow_remaining=1..}] minecraft:glowing 1 0 true

# Toggle glow for items
execute as @e[type=minecraft:item,scores={game.entity.glow_remaining=1..},nbt=!{Glowing:1b}] run data modify entity @s Glowing set value true
execute as @e[type=minecraft:item,scores={game.entity.glow_remaining=0},nbt={Glowing:1b}] run data modify entity @s Glowing set value false
