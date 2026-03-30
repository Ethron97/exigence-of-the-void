# Validate whether player can select this level; update visual states accordingly

## CONSTRAINTS
#   AS level 3 chooser

#====================================================================================================

# Set selectability state
#   We can hard-code these on load because they shouldn't change from anything in the menu
#   And cards.count JUST got updated from the validation step.
# CARD COUNT:
execute if score cards.count deck.analysis matches ..30 run tag @s add GoodCards
# ATTEMPTED LEVEL:
execute if score #attempts_d3 Temp matches 1.. run tag @s add GoodKnown
# GOT PREVIOUS ACHIEVEMENT:
execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run tag @s add GoodUnlock

# Update models
execute at @s[tag=GoodUnlock,tag=GoodCards,tag=!GoodKnown] run function exigence:hub/predungeon/menu/display/level_chooser/load/general/model_unknown
execute at @s[tag=GoodUnlock,tag=GoodKnown,tag=!GoodCards] run function exigence:hub/predungeon/menu/display/level_chooser/load/3/model_locked
execute at @s[tag=GoodUnlock,tag=GoodKnown,tag=GoodCards] run function exigence:hub/predungeon/menu/display/level_chooser/load/3/model_available

# Set color
team join Yellow @s[tag=!GoodCards,tag=GoodUnlock]
team join Green @s[tag=GoodCards,tag=GoodUnlock]

# Set name (lore 0)
data modify entity @s[tag=GoodKnown] item.components."minecraft:lore"[0] set value [{text:"Temple of Fervor",color:"#c7c1c1"}]

# Set locked reason (lore 1)
data modify entity @s[tag=!GoodUnlock] item.components."minecraft:lore"[1] set value [{text:"Rescue Scientist!",color:"#cf4f4f"}]
data modify entity @s[tag=GoodUnlock,tag=!GoodCards] item.components."minecraft:lore"[1] set value [{text:"Too Many Cards!",color:"#e9d45b"}]

execute if entity @s[tag=GoodUnlock] at @n[distance=..5,type=marker,tag=DoorSlotMarker3] positioned ~-0.15625 ~ ~-0.0525 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/3/summon_deck_size