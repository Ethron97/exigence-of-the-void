$data merge entity @s {Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"},\
{text:"Raw Beastroot",italic:false,bold:true,color:"$(uncommon)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_beast'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["beastroot"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"1.5🍖",color: "gold", italic: false,bold: false},{text:" 1.8🍖",color: "yellow",italic: false,bold: false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+30 seconds of ",bold:false,italic:false,color:"gray"},{text:"Beastsense",bold:false,italic:false,color:"$(effect)"}]
