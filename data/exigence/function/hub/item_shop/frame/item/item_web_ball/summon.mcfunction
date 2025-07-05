$data merge entity @s {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":[{text:"💼",italic:false,bold:true,color:"white"},\
{text:" Web Blob ",italic:false,bold:true,color:"$(rare)"},{text:"💼",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'item_web_ball'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["item_web_ball"]
data modify entity @s Item.components."minecraft:max_stack_size" set value 1

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Creates a mass of spider web",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Throw to use)",italic:false,color:"dark_gray"}]
