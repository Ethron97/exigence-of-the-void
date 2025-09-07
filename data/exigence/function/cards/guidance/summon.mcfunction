$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Guidance -",italic:false,color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"For each ",bold:false,italic:false,color:"gray"},{text:"❂",bold:false,italic:false,color:"aqua"},{text:" consumed this run: ",bold:false,italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+20 seconds of ",bold:false,italic:false,color:"gray"},{text:"Clairvoyance",bold:false,italic:false,color:"$(effect)"}]
