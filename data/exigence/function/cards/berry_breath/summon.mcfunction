$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Berry Breath -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_uncommon"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Ravagers eat berries from the",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"nearest berry bush. Gain +20 seconds",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"of ",italic:false,color:"gray"},{text:"Beast Sense ",italic:false,color:"$(effect)"},{text:"for each bush eaten.",italic:false,color:"gray"}]
