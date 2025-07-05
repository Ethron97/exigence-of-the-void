$data merge entity @s {Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"$(void_accent)"},\
{text:" Enderpearl ",italic:false,bold:true,color:"$(void)"},{text:"💼",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'ender_pearl'}

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Consumable",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Throw to teleport where it lands",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Lore 3",italic:false,color:"white"}]
