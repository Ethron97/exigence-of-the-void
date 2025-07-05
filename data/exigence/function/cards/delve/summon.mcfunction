$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Delve ✦ ✘",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_common_void"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Increased chances for difficult but",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"high value echos",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"}]
