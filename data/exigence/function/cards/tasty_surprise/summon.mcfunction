$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Tasty Surprise ✦ ✘",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_uncommon_void"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Spawn a cake on the echo shard",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 2",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
