$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Accelerate -",italic:false,color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +1 minute of ",italic:false,color:"gray",bold:false},{text:"Speed X+1",italic:false,color:"$(effect)",bold:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"where X is the highest amplifier of",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"speed you have had this run",italic:false,color:"gray"}]
