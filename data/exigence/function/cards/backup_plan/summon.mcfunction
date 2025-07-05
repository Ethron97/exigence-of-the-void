$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Backup Plan ✦",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary_instant"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+3 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"},{text:" on Level 2",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Spawns an additional exit",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"portal on Level 2.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(For level 4 runs only)",italic:false,color:"dark_gray"}]
