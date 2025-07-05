$data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"🧪",italic:false,bold:true,color:"white"},\
{text:" Moderate Vitality ",italic:false,bold:true,color:"$(uncommon)"},{text:"🧪",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'potion_health_c'
#$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:absorption",duration:1200,amplifier:2}],custom_color:$(vitality)
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:$(vitality)}

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Health Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"+6 ❤ ",italic:false,color:"gold"},{text:"Hearts (01:00)",italic:false,color:"gray"}]
