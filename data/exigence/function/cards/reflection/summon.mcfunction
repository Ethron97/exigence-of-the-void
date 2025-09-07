$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Reflection ✦",italic:false,color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Instant Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Reveal one hallway mirror parkour",italic:false,color:"gray"}]
