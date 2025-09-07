$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Fervor -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+6 ",italic:false,color:"gray"},{text:"🔥",italic:false,color:"aqua"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+5 seconds of ",italic:false,color:"gray"},{text:"Poison II",italic:false,color:"$(effect)"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
