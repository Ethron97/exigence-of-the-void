$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"∞ ▲ ✘ ✦ Scout ✦ ✘ ▲ ∞",italic:false,color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["blank_card"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Instant Persistent Ascend Void/Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 1",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 2",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]

#$summon minecraft:item ~ ~ ~ {Item:{components:{"minecraft:custom_name":'',"minecraft:lore":[]},count:1,id:"minecraft:paper"},Tags:["CardSummon","NCS"]}
