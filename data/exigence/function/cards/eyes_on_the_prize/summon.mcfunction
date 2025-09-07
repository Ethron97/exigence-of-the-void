$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Eyes on the Prize ✦",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"After this run, +1 cards are available",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"to purchase in the ember shop for each",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"rarity each time the shop is refreshed",italic:false,color:"gray"}]
