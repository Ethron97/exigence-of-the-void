$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Cash Crop -",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Consume half of the berries in your inventory.",italic:false,color:"gray",bold:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Gain +3 ",italic:false,color:"gray"},{text:"🍪",italic:false,color:"gold"},{text:" for each berry consumed.",italic:false,color:"gray"}]
