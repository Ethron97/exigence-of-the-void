$data merge entity @s {Item:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:custom_name":[{text:"🥾 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Imperious Boots",italic:false,bold:true,color:"$(void)"},{text:" 🥾",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'boots_sculk'}
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wild',material:'minecraft:gold'}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'feet'}]

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Helmet",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Stepping on sculk grants +5 seconds",color:"gray",italic:false}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"of ",color:"gray",italic:false},{text:"Speed II ",color:"$(effect)",italic:false},{text:"and ",color:"gray",italic:false},{text:"Jump Boost II",color:"$(effect)",italic:false}]
