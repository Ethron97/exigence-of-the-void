$data merge entity @s {Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:custom_name":[{text:"💼 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Totem of Undying",italic:false,bold:true,color:"$(void)"},{text:" 💼",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'totem_of_undying'}

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Consumable",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"When you would take lethal damage,",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"prevent it and teleport to a",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"random location.",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"MUST HOLD IN HAND OR OFFHAND",color:"red",italic:false,bold:true}]
