$data merge entity @s {Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_name":[{text:"🥋 ",italic:false,bold:true,color:"$(void_accent)"},\
{text:"Wings of Majesty",italic:false,bold:true,color:"$(void)"},{text:" 🥋",italic:false,bold:true,color:"$(void_accent)"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:'wings'}

$data modify entity @s Item.components."minecraft:lore" append value [{text:"✪✪✪✪✪",italic:false,color:"$(void)"},{text:" ",italic:false,color:"dark_gray"},{text:"Chestplate",italic:false,color:"$(void_accent)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Press spacebar while in the air to fly",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:unbreakable" set value {}
