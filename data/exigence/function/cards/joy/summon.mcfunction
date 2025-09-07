$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Joy ✦",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"👑 ",italic:false,color:"gray"},{text:"Triumph:",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +30 seconds of ",italic:false,color:"gray"},{text:"Jump Boost II",italic:false,color:"$(effect)"}]
