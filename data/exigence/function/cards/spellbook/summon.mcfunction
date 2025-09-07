$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"∞ ✦ Spellbook ✦ ∞",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"🧾 Spellbound ",italic:false,color:"$(spellbind)"},\
{text:"cards cost 1 less of",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"each resource",italic:false,color:"gray"}]
