# Load so players can see this in the shop window

## CONSTRAINTS
#   AS card display
#   AT ember shop menu

#====================================================================================================
execute if entity @s[tag=Displaying] run return run say I was displaying? Cannot display
#----------------------------------------------------------------------------------------------------

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Display card

tag @s add Displaying
tag @s remove Archived

# Teleport to position based on max number of slots, and this cards slot
#execute at @s run tp @s ~-1 ~ ~

# Get number of slots (minus 1)
scoreboard players set #slots ember_shop.display_sequence 0
execute if score @s ember_shop.rarity matches 1 run scoreboard players operation #slots ember_shop.display_sequence = #common ember_shop.display_sequence
execute if score @s ember_shop.rarity matches 2 run scoreboard players operation #slots ember_shop.display_sequence = #uncommon ember_shop.display_sequence
execute if score @s ember_shop.rarity matches 3 run scoreboard players operation #slots ember_shop.display_sequence = #rare ember_shop.display_sequence
execute if score @s ember_shop.rarity matches 4 run scoreboard players operation #slots ember_shop.display_sequence = #legendary ember_shop.display_sequence
scoreboard players remove #slots ember_shop.display_sequence 1

# Get this display sequence (minus 1)
scoreboard players operation #position ember_shop.display_sequence = @s ember_shop.display_sequence
scoreboard players remove #position ember_shop.display_sequence 1

execute store result score #d ember_shop.display_sequence run data get storage exigence:card_shop dz 120
execute store result score #d2 ember_shop.display_sequence run data get storage exigence:card_shop dz 60

# Position value: (sequence-1)*(d) - (slots-1)*(d/2)
scoreboard players operation #position ember_shop.display_sequence *= #d ember_shop.display_sequence
scoreboard players operation #slots ember_shop.display_sequence *= #d2 ember_shop.display_sequence
scoreboard players operation #position ember_shop.display_sequence -= #slots ember_shop.display_sequence

execute store result storage exigence:card_shop position double 0.01 run scoreboard players get #position ember_shop.display_sequence

function exigence:hub/ember_shop/menu/display/card/calls/position with storage exigence:card_shop

# Update purchasability
function exigence:hub/ember_shop/menu/display/card/calls/update_purchasability