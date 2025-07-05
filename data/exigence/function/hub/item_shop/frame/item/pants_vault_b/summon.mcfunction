$data merge entity @s {Item:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_name":[{text:"👖 ",italic:false,color:"white"},\
{text:"Insulated Pockets II",italic:false,color:"$(legendary)",bold:true},{text:" 👖",italic:false,color:"white"}]}},Tags:["NSS"]}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'pants_vault_b'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wayfinder',material:'minecraft:lapis'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'feet'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Leggings ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Keep unused vault keys",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Bring up to 2 vault keys into the dungeon",italic:false,color:"gray"}]
