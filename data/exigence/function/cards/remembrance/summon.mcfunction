$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ Remembrance ✘",italic:false,color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_uncommon_void"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+2 ",bold:false,italic:false,color:"gray"},{text:"♻",bold:false,italic:false,color:"green"}]
