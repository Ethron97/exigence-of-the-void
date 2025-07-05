$data merge entity @s {Item:{id:"minecraft:cookie",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"white"},\
{text:" Beastie Bite ",italic:false,bold:true,color:"$(uncommon)"},{text:"💼",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_cookie'

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Distracts one ravager for 5 seconds",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"* May give ravager a sugar rush.",italic:true,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Drop on ground to use)",italic:false,color:"dark_gray"}]
