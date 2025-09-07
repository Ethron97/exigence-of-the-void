$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"∞ ✦ Voidscent ✦ ∞",italic:false,color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Standard",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Beastsense ",italic:false,color:"$(effect)"}\
,{text:"works on ",italic:false,color:"gray"},{text:"Void Merchants",italic:false,color:"dark_purple"}]
