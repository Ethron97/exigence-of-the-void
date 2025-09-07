$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"▲ Respite ▲",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Ascend Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +30 seconds of ",italic:false,color:"gray",bold:false},{text:"Regeneration I",italic:false,color:"$(effect)",bold:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"   ▲ Ascend:",italic:false,color:"gray",bold:true}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    ▲: ",italic:false,color:"gray"},{text:"+30 seconds of ",italic:false,color:"gray",bold:false},{text:"Regeneration I",italic:false,color:"$(effect)",bold:false}]
