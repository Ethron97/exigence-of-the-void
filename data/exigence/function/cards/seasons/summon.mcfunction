$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"▲ Seasons ▲",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Ascend Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +1 ",italic:false,color:"gray",bold:false},{text:"♻",italic:false,color:"green",bold:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   ▲ Ascend:",italic:false,color:"gray",bold:true}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"    ▲: ",italic:false,color:"gray"},{text:": +1 ",italic:false,color:"gray",bold:false},{text:"♻",italic:false,color:"green",bold:false}]
