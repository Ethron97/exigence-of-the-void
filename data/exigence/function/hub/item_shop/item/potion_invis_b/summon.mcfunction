$data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"🧪",italic:false,bold:true,color:"white"},\
{text:" Extended Invisibility ",italic:false,bold:true,color:"$(legendary)"},{text:"🧪",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value "potion_invis_b"
data merge entity @s {Item:{components:{"minecraft:custom_data":{check_holding:1b}}}}
#$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:invisibility",duration:1200}],custom_color:$(invisibility)
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:$(invisibility)}

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Utility Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Invisibility ",italic:false,color:"$(effect)"},{text:"(01:00)",italic:false,color:"gray"}]
