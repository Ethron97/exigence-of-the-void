# Called by summon_card to summon the new card and adjust the Deck location marker

## CONSTRAINTS
#   AS/AT ArmorStand
#       tag=DeckCardLocation

#====================================================================================================

# Summon card armorstand ("NewCards" should be removed by whatever called this function after it is finished)
summon armor_stand ~ ~ ~ {Tags:["NewCards","Card","NewCard"],ShowArms:1b,NoGravity:1b,CustomNameVisible:0b}

# Wrap check
execute store result score @s TempCoords run data get entity @s Pos[0] 10
execute if score @s TempCoords matches -2925 run teleport @s ~-10 ~ ~1

# Move forward
execute at @s run teleport @s ~1 ~ ~
