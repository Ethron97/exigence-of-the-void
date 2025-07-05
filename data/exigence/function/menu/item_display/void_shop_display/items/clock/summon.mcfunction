$data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{text:"💼 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Temporal Matrix",italic:false,bold:true,color:"$(void)"},{text:" 💼",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'clock'}
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["clock"]

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Consumable",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Teleport to where you were",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"30 seconds ago",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Right click to use",color:"dark_gray",italic:false}]
