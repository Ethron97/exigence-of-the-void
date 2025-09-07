$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Final Harvest -",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": ALL grown bushes gain +2/3 ",bold:false,italic:false,color:"gray"},{text:"🍒",italic:false,bold:false,color:"dark_green"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"    No new bushes can grow",italic:false,color:"gray",bold:false}]
