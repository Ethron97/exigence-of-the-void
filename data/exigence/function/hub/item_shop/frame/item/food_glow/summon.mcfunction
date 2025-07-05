$data merge entity @s {Item:{id:"minecraft:glow_berries",count:1,components:{"minecraft:custom_name":[{text:"🥣 ",italic:false,bold:true,color:"white"}\
,{text:"Glow Berries",italic:false,bold:true,color:"$(rare)"},{text:" 🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'food_glow'

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"1🍖",color: "gold", italic: false,bold: false},{text:" 0.2🍖",color: "yellow",italic: false,bold: false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+20 seconds of ",bold:false,italic:false,color:"gray"},{text:"Glimmer",bold:false,italic:false,color:"$(effect)"}]
