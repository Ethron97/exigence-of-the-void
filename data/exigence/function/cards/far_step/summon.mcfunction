$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Far Step -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +15 seconds of ",bold:false,italic:false,color:"gray"},{text:"Far Step",bold:false,italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Allows you to teleport at will)",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
