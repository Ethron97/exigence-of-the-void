$data merge entity @s {Item:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:custom_name":[{text:"🥋 ",italic:false,color:"white"},\
{text:"Warrior\'s Core",italic:false,color:"$(uncommon)",bold:true},{text:" 🥋",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'chestplate_get_red'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:dyed_color" set value 15090221
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:sentry',material:'minecraft:redstone'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'chest'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Chestplate ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Start with +3 ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_red"}]
