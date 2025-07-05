$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Sunwalker -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:":",color:"gray",bold:false,italic:false}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +3 minutes of ",bold:false,italic:false,color:"gray"},{text:"Jump Boost II",bold:false,italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +3 minutes of ",bold:false,italic:false,color:"gray"},{text:"Speed II",bold:false,italic:false,color:"$(effect)"}]
