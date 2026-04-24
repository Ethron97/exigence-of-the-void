# Handle data for newly summoned card stands

## CONSTRAINTS
#   AS NewCards

## INPUT
#   STR card_name
#   STR display_name
#   SCORE #rarity deck.process_card
#   SCORE #void deck.process_card
#   SCORE #recycler deck.process_card
#   SCORE #spellbinder deck.process_card
#   SCORE #instant deck.process_card
#   SCORE #persistent deck.process_card

#====================================================================================================

# DEBUG
#$say (D3) Loading card b ($(card_name))

# Add flags
execute if score #void deck.process_card matches 1 run tag @s add IsVoid
execute if score #recycler deck.process_card matches 1 run tag @s add Recycler
execute if score #spellbinder deck.process_card matches 1 run tag @s add Spellbinder
execute if score #instant deck.process_card matches 1 run tag @s add Instant
execute if score #persistent deck.process_card matches 1 run tag @s add Persistent

# Copy card name to armor stand name for chat report
data modify entity @s CustomName set from entity @e[x=537,y=0,z=472,dx=0,dy=0,dz=0,type=minecraft:item,tag=NCS,limit=1] Item.components."minecraft:custom_name"

# Copy item into armor stand hand so we can access the item's custom_data.card_name
$item replace entity @s weapon.mainhand with paper[custom_data={card_name:'$(card_name)',display_name:'$(display_name)'}]
# Copy a copy of the copy to the offhand so we always have a copy of the original copy
item replace entity @s weapon.offhand from entity @s weapon.mainhand

# Copy rarity score
scoreboard players operation @s deck.card.rarity = #rarity deck.process_card

# Clean up local tag
tag @s remove NewCards
