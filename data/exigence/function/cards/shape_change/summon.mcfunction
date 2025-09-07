$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Shape Change -",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:":",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   +10 ",bold:false,italic:false,color:"gray"},{text:"❤ ",bold:false,italic:false,color:"red"},{text:"max health",bold:false,italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +30 seconds of ",bold:false,italic:false,color:"gray"},{text:"Saturation",bold:false,italic:false,color:"$(effect)"}]
