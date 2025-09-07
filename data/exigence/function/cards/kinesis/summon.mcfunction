$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Kinesis -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": Give ravagers within 32 blocks",color:"gray",italic:false,bold:false}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Slowness ",italic:false,color:"$(effect)"},{text:"(∞) equal to your ",italic:false,color:"gray"}\
,{text:"Speed ",italic:false,color:"$(effect)"},{text:"level",italic:false,color:"gray"}]
