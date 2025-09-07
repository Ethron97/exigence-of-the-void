$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"∞ Ambrosia ∞",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data" set value {card_name:'$(card_name)'}
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪",italic:false,color:"$(legendary)"},{text:" ",italic:false,color:"dark_gray"},{text:"Persistent Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": For the rest of the run, eating",italic:false,bold:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"a berry grants one of the following:",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    +15 seconds of ",italic:false,color:"gray"},{text:"Speed II",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    +10 seconds of ",italic:false,color:"gray"},{text:"Regeneneration I",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    +5 seconds of ",italic:false,color:"gray"},{text:"Jump Boost II",italic:false,color:"$(effect)"}]
