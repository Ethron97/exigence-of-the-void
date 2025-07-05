$data merge entity @s {Item:{id:"minecraft:magma_cream",count:1,components:{"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"white"},\
{text:" Magma Cream ",italic:false,bold:true,color:"$(rare)"},{text:"💼",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'item_magma_cream'
data modify entity @s Item.components."minecraft:max_stack_size" set value 1

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Passive Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"When a card fails to play due",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"to a lack of resources, this",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"is consumed to fill the missing",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"resources.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Does not work with 🧾 Spellbound)",italic:false,color:"dark_gray"}]
