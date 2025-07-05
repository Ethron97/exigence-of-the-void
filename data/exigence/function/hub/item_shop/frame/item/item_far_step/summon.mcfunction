$data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Far Step ",italic:false,bold:true,color:"$(legendary)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'item_far_step'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value true
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["item_far_step"]
#data modify entity @s Item.components."minecraft:use_cooldown" set value {seconds:1,cooldown_group:"exigence:far_step"}

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Transient",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"While ",italic:false,color:"gray"},{text:"Far Stepping",italic:false,color:"$(effect)"},{text:", use to teleport",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"to a nearby node on your level",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Right click to use)",color:"dark_gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Hold to preview node)",color:"dark_gray"}]
