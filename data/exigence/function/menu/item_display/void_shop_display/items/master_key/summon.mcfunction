$data merge entity @s {Item:{id:"minecraft:ominous_trial_key",count:1,components:{"minecraft:custom_name":[{text:"💼 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Skeleton Key",italic:false,bold:true,color:"$(void)"},{text:" 💼",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'master_key'}

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Consumable",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Opens any level door",color:"gray",italic:false}]
