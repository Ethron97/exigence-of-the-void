$data merge entity @s {Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_name":[{text:"⚗",italic:false,bold:true,color:"white"},\
{text:" Lingering Faerie Fire ",italic:false,bold:true,color:"$(uncommon)"},{text:"⚗",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'potion_glow_b'
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:glowing",duration:999999}],custom_color:$(glow)}

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Utility Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Glow ",italic:false,color:"$(effect)"},{text:"(∞)",italic:false,color:"gray"}]
