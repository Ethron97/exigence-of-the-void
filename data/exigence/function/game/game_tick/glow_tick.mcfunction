# Reduce GlowRemaining
scoreboard players remove @e[type=#exigence:glowable,scores={GlowRemaining=1..}] GlowRemaining 1

# For entities
effect give @e[type=#exigence:glowable_enemies,scores={GlowRemaining=1..}] minecraft:glowing 1 0 true

# Toggle glow for items
execute as @e[type=minecraft:item,scores={GlowRemaining=1..},nbt=!{Glowing:1b}] run data modify entity @s Glowing set value true
execute as @e[type=minecraft:item,scores={GlowRemaining=0},nbt={Glowing:1b}] run data modify entity @s Glowing set value false
