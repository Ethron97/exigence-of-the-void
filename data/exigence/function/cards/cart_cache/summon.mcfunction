$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Cart Cache ✦ ✘",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"A random minecart in the Mirror",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Mines spawns with ",italic:false,color:"gray"},{text:"💎",italic:false,color:"gold"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
