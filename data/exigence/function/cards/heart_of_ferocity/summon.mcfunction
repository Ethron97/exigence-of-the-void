$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Heart of Ferocity ✦",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"1st copy: +1 max Red ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_red"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"2nd copy: +2 max Red ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_red"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"3rd copy: +3 max Red ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_red"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
