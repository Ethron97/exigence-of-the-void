$data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"white"},\
{text:" Dust of Heightening ",italic:false,bold:true,color:"$(rare)"},{text:"💼",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'dust_heighten'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["redstone"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"Heighten",italic:false,color:"yellow"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Right click to use)",italic:false,color:"dark_gray"}]
