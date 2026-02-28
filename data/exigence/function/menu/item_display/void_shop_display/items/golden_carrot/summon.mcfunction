$data merge entity @s {Item:{id:"minecraft:golden_carrot",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Golden Carrot",italic:false,bold:true,color:"$(void)"},{text:" 🥣",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'golden_carrot'}

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Food",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text: "3🍖",color: "gold", italic: false,bold: false},{text:" 7🍖",color: "yellow",italic: false,bold: false}]
