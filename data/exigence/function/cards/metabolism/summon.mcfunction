$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"∞ Metabolism ∞",italic:false,color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Persistent Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Lose 3 ",bold:false,italic:false,color:"gray"},{text:"🍖",bold:false,italic:false,color:"red"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Increase the duration of all ",italic:false,color:"gray"},{text:"Speed",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"from cards by +30 seconds",italic:false,color:"gray"}]
