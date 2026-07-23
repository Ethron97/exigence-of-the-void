# Update text for hover detail

## CONSTRAINTS
#   AS text display

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) Updating refresh detail

#$data modify entity @s text set value [{text:"🔥$(ember_cost)",color:"$(ember_cost_color)"}]
# Set from the selected rarity display

data modify entity @s text set from entity @n[type=minecraft:item_display,tag=RaritySelector,tag=Selected,distance=..5] item.components."minecraft:lore"[1]
