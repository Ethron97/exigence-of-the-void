$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"▲ Ascending Strides ▲",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+45 seconds of ",italic:false,color:"gray"},{text:"Speed I",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"▲ Ascend:",italic:false,color:"gray",bold:true}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"   +30 seconds of ",italic:false,color:"gray"},{text:"Speed I",italic:false,color:"$(effect)"}]
