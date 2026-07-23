$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Mind of Divinity ✦",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"1st copy: +1 max Aqua ",italic:false,color:"gray"},{text:"❂",italic:false,color:"aqua"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"2nd copy: +2 max Aqua ",italic:false,color:"gray"},{text:"❂",italic:false,color:"aqua"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"3rd copy: +3 max Aqua ",italic:false,color:"gray"},{text:"❂",italic:false,color:"aqua"}]

#data modify entity @s Item.components."minecraft:lore" append value [{text:"Increases max Aqua ",italic:false,color:"gray"},{text:"❂ ",italic:false,color:"aqua"},{text:"based on how many",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"of this card are in the deck:",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"x1: +1 total max Aqua ",italic:false,color:"gray"},{text:"❂",italic:false,color:"aqua"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"x2: +3 total max Aqua ",italic:false,color:"gray"},{text:"❂",italic:false,color:"aqua"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"x3: +6 total max Aqua ",italic:false,color:"gray"},{text:"❂",italic:false,color:"aqua"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
