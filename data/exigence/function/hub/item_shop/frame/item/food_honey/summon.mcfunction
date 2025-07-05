$data merge entity @s {Item:{id:"minecraft:honey_bottle",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"}\
,{text:"Health Honey",italic:false,bold:true,color:"$(rare)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_honey'
$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"3🍖",color: "gold", italic: false,bold: false},{text:" 1.2🍖",color: "yellow",italic: false,bold: false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Gain +1 ",italic:false,color:"gray"},{text:"❤ ",italic:false,color:"red"},{text:"max health",italic:false,color:"gray"}]
