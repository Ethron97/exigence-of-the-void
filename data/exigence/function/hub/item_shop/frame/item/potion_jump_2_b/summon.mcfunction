$data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"🧪",italic:false,bold:true,color:"white"},\
{text:" Demanding Leaping ",italic:false,bold:true,color:"$(rare)"},{text:"🧪",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'potion_jump_2_b'
data merge entity @s {Item:{components:{"minecraft:custom_data":{check_holding:1b}}}}
#$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:jump_boost",duration:400,amplifier:1}],custom_color:$(jump)
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:$(jump)}

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Jump Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Jump Boost II ",italic:false,color:"$(effect)"},{text:"(0:20)",italic:false,color:"gray"}]
