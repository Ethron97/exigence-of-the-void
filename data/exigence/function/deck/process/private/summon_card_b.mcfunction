# Called by summon_card to summon the new card and adjust the Deck location marker

## CONSTRAINTS
#   AS/AT ArmorStand tag=DeckCardLocation

#====================================================================================================

# Summon card armorstand ("NewCards" should be removed by whatever called this function after it is finished)
summon armor_stand ~ ~ ~ {Tags:["NewCards","Card","NewCard"],ShowArms:1b,NoGravity:1b,CustomNameVisible:0b,Rotation:[90,0]}

# Move forward
execute at @s run teleport @s ~ ~ ~-1

# Wrap check
execute at @s if block ~ ~-1 ~ red_glazed_terracotta run teleport @s ~-1 ~ ~10
