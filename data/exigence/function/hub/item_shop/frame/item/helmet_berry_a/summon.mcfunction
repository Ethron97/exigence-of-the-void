$data merge entity @s {Item:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:custom_name":[{text:"⛑ ",italic:false,bold:true,color:"white"},\
{text:"Fiber Optics",italic:false,bold:true,color:"$(common)"},{text:" ⛑",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'helmet_berry_a'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wild',material:'minecraft:emerald'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'head'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Helmet ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Grown bushes within 16 blocks glow",italic:false,color:"gray"}]
