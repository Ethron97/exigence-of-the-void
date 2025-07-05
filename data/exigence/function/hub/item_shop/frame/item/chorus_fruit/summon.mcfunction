$data merge entity @s {Item:{id:"minecraft:suspicious_stew",count:1,components:{"minecraft:custom_name":[{text:"🥣",italic:false,bold:true,color:"white"},\
{text:" Chaos Fruit ",italic:false,bold:true,color:"$(rare)"},{text:"🥣",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'chorus_fruit'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["chorus_fruit"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Food",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text: "3🍖",color: "gold", italic: false,bold: false},{text:" 3.6🍖",color: "yellow",italic: false,bold: false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Teleport to a random nearby location",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+3 seconds of ",bold:false,italic:false,color:"gray"},{text:"Blindness",bold:false,italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Eat to use)",italic:false,color:"dark_gray"}]
