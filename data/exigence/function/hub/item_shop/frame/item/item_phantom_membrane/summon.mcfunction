$data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"white"},\
{text:" Phantom Membrane ",italic:false,bold:true,color:"$(legendary)"},{text:"💼",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'item_phantom_membrane'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["item_phantom_membrane"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"While invisible, use to teleport",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"to a nearby node on your level",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Right click to use)",italic:false,color:"dark_gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Hold to preview node)",italic:false,color:"dark_gray"}]
