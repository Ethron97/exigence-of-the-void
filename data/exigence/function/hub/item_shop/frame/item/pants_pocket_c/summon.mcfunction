$data merge entity @s {Item:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_name":[{text:"👖 ",italic:false,color:"white"},\
{text:"Potion Pocket",italic:false,color:"$(rare)",bold:true},{text:" 👖",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'pants_pocket_c'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wayfinder',material:'minecraft:netherite'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'feet'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Leggings ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Potion ",italic:false,color:"gray"},{text:"🧪 ",italic:false,color:"yellow"},{text:"item limit increased by 1",italic:false,color:"gray"}]
