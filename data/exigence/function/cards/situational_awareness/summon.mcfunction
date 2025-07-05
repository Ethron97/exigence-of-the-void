$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"▲ Situational Awareness ▲",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Ascend Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+15 seconds of ",italic:false,color:"gray"},{text:"Beast Sense",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"▲ Ascend:",italic:false,color:"gray",bold:true}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"▲: +15 seconds of ",italic:false,color:"gray"},{text:"Beast Sense",italic:false,color:"$(effect)"}]
