# Called by use_item when player uses wind line item

## CONSTRAINTS
# AS player

#====================================================================================================

# DEBUG
execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) use wind line

# Call function
execute at @s run function exigence:hub/item_shop/item/item_wind_line/trigger

# Clear 
scoreboard players set #remove Temp 1
