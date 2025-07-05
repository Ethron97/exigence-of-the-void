$data merge entity @s {Item:{id:"minecraft:gunpowder",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Ashes ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'ashes'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"You are unaffected by ",italic:false,color:"gray"},{text:"Soulsand",italic:false,color:"red"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Player Passive",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:"the duration of the run",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:"(Coop Stackable X)",color:"dark_gray"}
