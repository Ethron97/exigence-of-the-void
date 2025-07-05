$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Spell Scroll -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_uncommon"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",bold:false,italic:false,color:"gray"},{text:"🧾",bold:false,italic:false,color:"$(spellbind)"}]
