## CONSTRAINTS
#   AS villager

#====================================================================================================

# Return if being carried
execute if entity @s[tag=Carried] run return 0
#----------------------------------------------------------------------------------------------------

# Ensure scientist npc is always facing nearest player
execute if entity @s[tag=!Reflection] at @s anchored eyes facing entity @p[tag=ActivePlayer] eyes run tp @s ~ ~ ~ ~ ~

# Glow bi-second
execute if score seconds.cooldown tick_counter matches 3 run particle minecraft:glow ~ ~0.8 ~ 0.2 0.4 0.2 0 1
execute if score seconds.cooldown tick_counter matches 13 run particle minecraft:glow ~ ~0.8 ~ 0.2 0.4 0.2 0 1