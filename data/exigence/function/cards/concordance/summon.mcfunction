$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"∞ Concordance ∞",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Persistent Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": For the rest of the run, lighting",italic:false,bold:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"an altar grants one of the following:",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    +60 seconds of ",italic:false,color:"gray"},{text:"Beastsense",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    +45 seconds of ",italic:false,color:"gray"},{text:"Glimmer",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    +30 seconds of ",italic:false,color:"gray"},{text:"Flicker",italic:false,color:"$(effect)"}]
