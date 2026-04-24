# Update glowing

## CONSTRAINTS
#   AS item (game.entity.glow_remaining = 1..)

#====================================================================================================

# Reduce score
scoreboard players remove @s game.entity.glow_remaining 1

# If stopped glowing, unglow and return
execute if score @s game.entity.glow_remaining matches 0 run return run function exigence:game/game_tick/e_tick/item/unglow
#----------------------------------------------------------------------------------------------------

# If not stopped glowing, glow if not glowing
execute unless entity @s[tag=GlowingItem] run function exigence:game/game_tick/e_tick/item/glow
