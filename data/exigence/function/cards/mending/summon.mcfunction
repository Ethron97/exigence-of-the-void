$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"∞ ✦ Mending ✦ ∞",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Persistent Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Effects that give ",italic:false,color:"gray"},{text:"Regeneration I ",italic:false,color:"$(effect)"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"instead give ",italic:false,color:"gray"},{text:"Regeneration II",italic:false,color:"$(effect)"}]
