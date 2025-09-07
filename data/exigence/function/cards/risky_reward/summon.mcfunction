$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Risky Reward -",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+2 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+10 ",italic:false,color:"gray"},{text:"🍪",italic:false,color:"gold"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
