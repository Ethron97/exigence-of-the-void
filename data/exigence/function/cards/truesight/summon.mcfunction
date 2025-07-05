$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Truesight -",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": For the folowing effects,",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"gain +X seconds equal to the amount of",bold:false,italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"time you have already had that effect ",bold:false,italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"    Glimmer, Flicker, Beastsense",bold:false,italic:false,color:"$(effect)"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"(This time cannot be modified by Heighten)",bold:false,italic:false,color:"gray"}]
