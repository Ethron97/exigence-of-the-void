$data merge entity @s {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:custom_name":[{text:"⚗",italic:false,bold:true,color:"white"},\
{text:" Grease ",italic:false,bold:true,color:"$(uncommon)"},{text:"⚗",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'potion_slow_a'
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:slowness",duration:999999,amplifier:1}],custom_color:$(slow)}

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Utility Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Slowness II ",italic:false,color:"$(effect)"},{text:" (∞)",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Does not affect player)",italic:false,color:"dark_gray"}]
