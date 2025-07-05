$data merge entity @s {Item:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:custom_name":[{text:"🥋 ",italic:false,color:"white"},\
{text:"Sun Plate II",italic:false,color:"$(rare)",bold:true},{text:" 🥋",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'chestplate_shield_b'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
#data modify entity @s Item.components."minecraft:dyed_color" set value 8361091
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:flow',material:"resin"}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'chest'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Chestplate ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"▲ Ascend:",italic:false,color:"gray",bold:true}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"    +4 ",italic:false,color:"gray"},{text:"❤ ",italic:false,color:"gold"},{text:"(10:00)",italic:false,color:"gray"}]
