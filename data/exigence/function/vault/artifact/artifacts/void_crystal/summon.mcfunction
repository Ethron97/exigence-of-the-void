$data merge entity @s {Item:{id:"minecraft:end_crystal",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Void Crystal ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'void_crystal'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 Void Cards for each rarity",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"available per refresh.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Void cards cost 50% less ",italic:false,color:"gray"},{text:"🔥",italic:false,color:"aqua"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Dungeon Passive (Coop Stackable ✔)",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:": Modifier is applied for  he duration of the run",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"(Coop Stackable ✔)",color:"dark_gray"}]
