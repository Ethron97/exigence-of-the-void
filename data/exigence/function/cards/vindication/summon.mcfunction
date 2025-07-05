$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Vindication -",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +1 ",italic:false,color:"gray",bold:false},{text:"🔥",italic:false,color:"aqua",bold:false},{text:" for each heart",italic:false,color:"gray",bold:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"of damage taken this run",italic:false,color:"gray"}]
