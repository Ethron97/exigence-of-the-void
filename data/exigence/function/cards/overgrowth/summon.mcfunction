$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Overgrowth -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": ALL grown bushes have",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"a 25% chance to gain +1/2 ",italic:false,color:"gray"},{text:"🍒",italic:false,color:"dark_green"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
