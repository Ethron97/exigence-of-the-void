$data merge entity @s {Item:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:custom_name":[{text:"👖 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Trousers of Dignity",italic:false,bold:true,color:"$(void)"},{text:" 👖",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'leggings_artifact'}
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:flow',material:'minecraft:gold'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'feet'}]

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Leggings",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Artifact ",color:"gray",italic:false},{text:"✨ ",color:"yellow",italic:false},{text:"limit increased by 1",color:"gray",italic:false}]
