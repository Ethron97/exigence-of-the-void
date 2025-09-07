$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"∞ Resonance ∞",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Persistent Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": For the rest of the run, ringing",italic:false,bold:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"a bell grants +30 seconds of ",italic:false,color:"gray"},{text:"Clairvoyance",italic:false,color:"$(effect)"}]
