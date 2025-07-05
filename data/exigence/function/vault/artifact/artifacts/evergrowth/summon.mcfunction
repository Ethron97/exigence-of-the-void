$data merge entity @s {Item:{id:"minecraft:rose_bush",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Evergrowth ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'evergrowth'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"If all bushes on your level are grown,",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"🍒",italic:false,color:"dark_green"},{text:" apply to the next level up",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Dungeon Passive (Coop Stackable ✖)",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:": Modifier is applied for the duration of the run",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:"(Coop Stackable X)",color:"dark_gray"}
