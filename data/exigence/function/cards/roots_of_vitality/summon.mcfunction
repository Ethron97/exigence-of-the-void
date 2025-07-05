$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Roots of Vitality ✦",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_common_instant"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"1st copy: +1 max Green ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_green"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"2nd copy: +2 max Green ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_green"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"3rd copy: +3 max Green ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_green"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
