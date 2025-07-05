$data merge entity @s {Item:{id:"minecraft:beetroot_soup",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"},\
{text:"Beetroot Soup",italic:false,bold:true,color:"$(uncommon)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_c'

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text: "3🍖",color: "gold", italic: false,bold: false},{text:" 3.6🍖",color: "yellow",italic: false,bold: false}]
