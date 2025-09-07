$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Wish -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+5 minutes of a random ",bold:false,italic:false,color:"gray"},\
{text:"Effect",bold:false,italic:false,color:"$(effect)"},{text:".",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"A random resource has their current",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"and max values reduced by 2 for this run.",bold:false,italic:false,color:"gray"}]
