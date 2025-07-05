$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Level Two Key ✦",italic:false,color:"$(developer)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_developer"]

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(developer)"},{text:" ",italic:false,color:"dark_gray"},{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Start game with level 2 key",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 2",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
