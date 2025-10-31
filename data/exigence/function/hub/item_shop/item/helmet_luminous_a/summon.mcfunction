$data merge entity @s {Item:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:custom_name":[{text:"⛑ ",italic:false,bold:true,color:"white"},\
{text:"Luminous I",italic:false,bold:true,color:"$(legendary)"},{text:" ⛑",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'helmet_luminous_a'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wild',material:'minecraft:copper'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'head'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Helmet ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"+32 Glimmer range, +32 Flicker range",italic:false,color:"gray"}]
