$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Chrysopoeia ✦ ✘",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"🔥 Embers ",italic:false,color:"aqua"},{text:"picked up are ",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"converted to ",italic:false,color:"gray"},{text:"🔘 Coins",italic:false,color:"gold"}]
