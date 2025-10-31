$data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"🧪",italic:false,bold:true,color:"white"},\
{text:" Invisibility ",italic:false,bold:true,color:"$(rare)"},{text:"🧪",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value "potion_invis_a"
data merge entity @s {Item:{components:{"minecraft:custom_data":{check_holding:1b}}}}
#$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:invisibility",duration:600}],custom_color:$(invisibility)
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:$(invisibility)}

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Utility Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Invisibility ",italic:false,color:"$(effect)"},{text:"(00:30)",italic:false,color:"gray"}]
