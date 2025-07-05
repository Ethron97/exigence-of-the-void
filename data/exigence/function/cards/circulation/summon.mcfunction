$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Circulation -",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": For 1 minute, gain +1 ",bold:false,italic:false,color:"gray"},{text:"🍪",bold:false,italic:false,color:"gold"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"whenever you pick up a coin 🔘",italic:false,color:"gray"}]
