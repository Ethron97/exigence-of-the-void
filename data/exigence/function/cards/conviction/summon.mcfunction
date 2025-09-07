$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Conviction ✦",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Trigger 👑 ",italic:false,color:"gray"},{text:"Triumph at the start of the game",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"   Trigger ",italic:false,color:"gray"},{text:"▲ Ascend",italic:false,bold:true,color:"gray"}]
