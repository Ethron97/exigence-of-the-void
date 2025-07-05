$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Recovery -",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_common"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +30 seconds of ",bold:false,italic:false,color:"gray"},{text:"Regeneration I",bold:false,italic:false,color:"$(effect)"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 2",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
