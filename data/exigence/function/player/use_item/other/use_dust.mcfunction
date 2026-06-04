# Called when player uses Dust of Appearance item

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Use dust of appearance

function exigence:hub/item_shop/item/item_dust_of_appearance/trigger

# Clear 
scoreboard players set #remove Temp 1
