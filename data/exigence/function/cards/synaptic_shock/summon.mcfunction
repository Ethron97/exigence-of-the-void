$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Synaptic Shock -",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": ",color:"gray",bold:false,italic:false},{text:"Stun ",color:"yellow",bold:false,italic:false},{text:"all enemies for 30 seconds",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Stun",bold:false,italic:true,color:"yellow"},{text:":",color:"gray",bold:false,italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"    - Non-Wardens cannot move or attack",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"    - Wardens have halved movement speed",bold:false,italic:false,color:"gray"}]
