# Validate whether player can select this level; update visual states accordingly

## CONSTRAINTS
#   AS level 4 chooser

#====================================================================================================

# Set selectability state
#   We can hard-code these on load because they shouldn't change from anything in the menu
#   And cards.count JUST got updated from the validation step.
# CARD COUNT:
execute if score cards.count deck.analysis matches ..40 run tag @s add GoodCards
# ATTEMPTED LEVEL:
execute if score #attempts_d4 Temp matches 1.. run tag @s add GoodKnown
# GOT PREVIOUS ACHIEVEMENT:
execute if entity @p[tag=Predungeon,distance=..16,advancements={exigence:story/rescue_petitioner=true}] run tag @s add GoodUnlock

# Update models
execute at @s[tag=GoodUnlock,tag=GoodCards,tag=!GoodKnown] run function exigence:hub/predungeon/menu/display/level_chooser/load/general/model_unknown
execute at @s[tag=GoodUnlock,tag=GoodKnown,tag=!GoodCards] run function exigence:hub/predungeon/menu/display/level_chooser/load/4/model_locked
execute at @s[tag=GoodUnlock,tag=GoodKnown,tag=GoodCards] run function exigence:hub/predungeon/menu/display/level_chooser/load/4/model_available

# Set color
team join Yellow @s[tag=!GoodCards,tag=GoodUnlock]
team join Green @s[tag=GoodCards,tag=GoodUnlock]

# Set name (lore 0)
data modify entity @s[tag=GoodKnown] item.components."minecraft:lore"[0] set value [{text:"Ardor's Bane",color:"#c7c1c1"}]

# Set locked reason (lore 1)
data modify entity @s[tag=!GoodUnlock] item.components."minecraft:lore"[1] set value [{text:"Rescue Petitioner!",color:"#cf4f4f"}]
data modify entity @s[tag=GoodUnlock,tag=!GoodCards] item.components."minecraft:lore"[1] set value [{text:"Too Many Cards!",color:"#e9d45b"}]

execute if entity @s[tag=GoodUnlock] at @n[type=marker,tag=DoorSlotMarker4,distance=..5] positioned ~-0.15625 ~ ~-0.0525 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/4/summon_deck_size