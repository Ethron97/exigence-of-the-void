$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Bloodsense -",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+2 minutes of ",italic:false,color:"gray"},{text:"Beastsense",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+5 seconds of ",italic:false,color:"gray"},{text:"Poison II",italic:false,color:"$(effect)"}]
