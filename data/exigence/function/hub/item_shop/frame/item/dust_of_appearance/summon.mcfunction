$data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"white"},\
{text:" Dust of Appearance ",italic:false,bold:true,color:"$(uncommon)"},{text:"💼",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'dust_of_appearance'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["glowstone_dust"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Reveal nearby hidden blocks",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Right click to use)",italic:false,color:"dark_gray"}]
