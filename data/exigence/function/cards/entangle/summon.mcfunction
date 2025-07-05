$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Entangle -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": ",color:"gray",bold:false,italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   +5",bold:false,italic:false,color:"gray"},{text:" 🍒",bold:false,italic:false,color:"dark_green"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   Give 1 ravager on each ",bold:false,italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   level ",bold:false,italic:false,color:"gray"},{text:"Slowness II ",bold:false,italic:false,color:"$(effect)"},{text:"(∞)",bold:false,italic:false,color:"gray"}]
