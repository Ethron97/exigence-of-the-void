$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Helpful Spirits -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Instantly pick up all items within 32 blocks",bold:false,italic:false,color:"gray"}]
