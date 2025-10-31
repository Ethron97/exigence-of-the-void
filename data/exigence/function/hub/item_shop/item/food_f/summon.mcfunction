$data merge entity @s {Item:{id:"minecraft:rabbit_stew",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"},\
{text:"Rabbit Stew",italic:false,bold:true,color:"$(rare)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_f'

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text: "5🍖",color: "gold", italic: false,bold: false},{text:" 6🍖",color: "yellow",italic: false,bold: false}]
