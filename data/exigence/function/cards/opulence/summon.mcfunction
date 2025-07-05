$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Opulence -",italic:false,color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"For each ",bold:false,italic:false,color:"gray"},{text:"❂",bold:false,italic:false,color:"dark_green"},{text:" consumed this run: +2 ",bold:false,italic:false,color:"gray"},{text:"🍪",bold:false,italic:false,color:"gold"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 2",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
