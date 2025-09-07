$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"∞ ✦ Claustrophobia ✦ ∞",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Persistent",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"If there are at least 7 ",italic:false,color:"gray"},{text:"☢ ",italic:false,color:"red"},{text:"on",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"your level, gain ",italic:false,color:"gray"},{text:"Speed II",italic:false,color:"$(effect)"}]
