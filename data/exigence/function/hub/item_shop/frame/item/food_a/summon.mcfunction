$data merge entity @s {Item:{id:"minecraft:apple",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"},\
{text:"Apple",italic:false,bold:true,color:"$(common)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_a'

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text: "2🍖",color: "gold", italic: false,bold: false},{text:" 1.2🍖",color: "yellow",italic: false,bold: false}]
