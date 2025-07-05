$data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"🧪",italic:false,bold:true,color:"white"},\
{text:" Fervent Leaping ",italic:false,bold:true,color:"$(legendary)"},{text:"🧪",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'potion_jump_8'
#$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:jump_boost",duration:200,amplifier:7}],custom_color:$(jump)
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:$(jump)}

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Jump Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Jump Boost VIII ",italic:false,color:"$(effect)"},{text:"(0:10)",italic:false,color:"gray"}]
