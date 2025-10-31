$data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"🧪",italic:false,bold:true,color:"white"},\
{text:" Extended Swiftness ",italic:false,bold:true,color:"$(uncommon)"},{text:"🧪",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'potion_speed_1_c'
data merge entity @s {Item:{components:{"minecraft:custom_data":{check_holding:1b}}}}
#$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:speed",duration:3600,amplifier:0}],custom_color:$(speed)
$data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:$(speed)}

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Speed Potion",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Speed I ",italic:false,color:"$(effect)"},{text:"(03:00)",italic:false,color:"gray"}]
