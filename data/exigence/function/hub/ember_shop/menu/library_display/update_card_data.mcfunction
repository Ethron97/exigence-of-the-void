# Function so we can update if we make a balance change

## CONSTRAINTS
#   AS/AT library display

#====================================================================================================

# Assumes inputs were reset already

# Summon card at self
function exigence:cards/summon_card with entity @s item.components."minecraft:custom_data"

# Copy item data
data modify entity @s item set from entity @n[type=minecraft:item,tag=NCS,distance=..1] Item

# Kill item
kill @n[type=minecraft:item,tag=NCS,distance=..1]
