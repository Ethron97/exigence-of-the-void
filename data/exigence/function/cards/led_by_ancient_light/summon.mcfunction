$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Led by Ancient Light ✦ ✘",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary_void"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Drop +1 ",italic:false,color:"gray"},{text:"Ardor Flame ",italic:false,color:"aqua"},{text:"on each level",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Use the Ancient Flames to light beacons.",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"",italic:false,color:"gray"}]
