# Validate whether player can select this level; update visual states accordingly

## CONSTRAINTS
#   AS level 2 chooser

#====================================================================================================

# Set selectability state
#   We can hard-code these on load because they shouldn't change from anything in the menu
#   And cards.count JUST got updated from the validation step.
# CARD COUNT:
execute if score cards.count deck.analysis matches ..20 run tag @s add GoodCards
# BEAT LEVEL:
execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/win_difficulty_2=true}] run tag @s add GoodUnlock
# TODO attempted level profile.data.winless.attempted_D2

#   Once you've at least ATTEMPTED (TODO) leve1 1, the level icon is known.
data modify entity @s[tag=GoodUnlock] item.components."minecraft:custom_model_data".strings set value ["level_2"]
team join Green @s[tag=GoodCards,tag=GoodUnlock]