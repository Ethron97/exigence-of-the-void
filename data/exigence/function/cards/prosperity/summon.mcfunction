$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Prosperity -",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": ",bold:false,italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +1 minute of ",italic:false,color:"gray"},{text:"Flicker",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +1 minute of ",italic:false,color:"gray"},{text:"Glimmer",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   +5 ",italic:false,color:"gray"},{text:"🍪",italic:false,color:"gold"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   +5 ",italic:false,color:"gray"},{text:"🔥",italic:false,color:"aqua"}]
