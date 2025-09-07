$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Void Cache ✦ ✘",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Spawn a Void Cache on level 4. It",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"contains random Void consumabls.",italic:false,color:"gray"}]
