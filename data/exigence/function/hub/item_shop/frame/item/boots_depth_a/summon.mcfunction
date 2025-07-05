$data merge entity @s {Item:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:custom_name":[{text:"🥾 ",italic:false,bold:true,color:"white"},\
{text:"Depth Striders",italic:false,bold:true,color:"$(common)"},{text:" 🥾",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'boots_depth_a'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:enchantments" set value {"minecraft:depth_strider":3}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'legs'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Boots ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Depth Strider III",italic:false,color:"gray"}
