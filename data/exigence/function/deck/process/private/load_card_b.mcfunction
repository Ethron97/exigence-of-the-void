# Get how many of the card are in the player's inventory (and remove them in the process)
# function exigence:deck/process/load_card {card_name:"",display_name:"",rarity:0,void:0,recycler:0,spellbinder:0}

## CONSTRAINTS
#   AS NewCards

## INPUT
#   STR card_name
#   STR display_name
#   INT rarity
#   BIT void
#   BIT recycler
#   BIT spellbinder
#   BIT instant

#==========================================================================================================

# DEBUG
#$say Loading card b ($(card_name))

# Add spellbinder/recycler tags
$execute if score 1 number matches $(recycler) run tag @s add Recycler
$execute if score 1 number matches $(spellbinder) run tag @s add Spellbinder
$execute if score 1 number matches $(instant) run tag @s add Instant
$execute if score 1 number matches $(persistent) run tag @s add Persistent

# Copy card name to armor stand name for chat report
data modify entity @s CustomName set from entity @e[type=minecraft:item,tag=NCS,limit=1] Item.components."minecraft:custom_name"

# Copy item into armor stand hand so we can access the item's custom_data.card_name
$item replace entity @s weapon.mainhand with paper[custom_data={card_name:'$(card_name)',display_name:'$(display_name)'}]
# Copy a copy of the copy to the offhand so we always have a copy of the original copy
item replace entity @s weapon.offhand from entity @s weapon.mainhand

# Copy rarity score
$scoreboard players set @s deck.card.rarity $(rarity)

# Copy void score
$scoreboard players set @s deck.card.is_void $(void)

# Clean up local tag
tag @s remove NewCards
