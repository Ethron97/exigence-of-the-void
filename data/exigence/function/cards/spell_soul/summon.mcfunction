$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Spell Soul -",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Consume all ",bold:false,italic:false,color:"gray"},{text:"❂",bold:false,italic:false,color:"aqua"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",bold:false,italic:false,color:"gray"}\
,{text:"🧾 ",bold:false,italic:false,color:"$(spellbind)"},{text:"for each ",bold:false,italic:false,color:"gray"}\
,{text:"❂ ",bold:false,italic:false,color:"aqua"},{text:"consumed",bold:false,italic:false,color:"gray"}]
