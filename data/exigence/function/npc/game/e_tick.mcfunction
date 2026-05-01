## CONSTRAINTS
#   AS villager

#====================================================================================================

# Ensure scientist npc is always facing nearest player
execute if entity @s[tag=NPC_Scientist,tag=!Reflection,tag=!Carried] at @s anchored eyes facing entity @p[tag=ActivePlayer] eyes run tp @s ~ ~ ~ ~ ~
