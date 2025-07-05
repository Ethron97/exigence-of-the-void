$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Detect Thoughts -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_uncommon"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Look at a ravager for 3 seconds within",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"the next 30 seconds to cause the nearest",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"key",italic:false,color:"gold"},{text:" to glow for 30 seconds",italic:false,color:"gray"}]
