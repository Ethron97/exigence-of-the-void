$data merge entity @s {Item:{id:"minecraft:cooked_mutton",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"},\
{text:"Cooked Mutton",italic:false,bold:true,color:"$(uncommon)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_d'

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text: "3🍖",color: "gold", italic: false,bold: false},{text:" 4.8🍖",color: "yellow",italic: false,bold: false}]
