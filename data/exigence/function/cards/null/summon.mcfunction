$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ Null ✘",italic:false,color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_common_void"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"No effect",italic:false,color:"gray"}]
