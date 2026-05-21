# Update refresh button appearance

## CONSTRAINTS
#   AS refresh button (item display)

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Update appearance

data modify entity @s item.components."minecraft:custom_model_data".strings set value ["refresh_green"]
data modify entity @s item.components."minecraft:lore" set value [{text:""}]
team join Green @s

execute if score warnings deck.analysis matches 1.. run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["refresh_yellow"]
execute if score warnings deck.analysis matches 1.. run data modify entity @s item.components."minecraft:lore" set value [{text:"Warnings found",color:"yellow"}]
execute if score warnings deck.analysis matches 1.. run team join Special @s

execute if score errors deck.analysis matches 1.. run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["refresh_red"]
execute if score errors deck.analysis matches 1.. run data modify entity @s item.components."minecraft:lore" set value [{text:"Errors found",color:"red"}]
execute if score errors deck.analysis matches 1.. run team join Enemy @s

execute at @s run data modify entity @n[type=minecraft:text_display,tag=RefreshButtonDetails,distance=..1] text set from entity @s item.components."minecraft:lore"[0]