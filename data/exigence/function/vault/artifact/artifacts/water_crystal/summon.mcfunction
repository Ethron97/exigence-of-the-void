$data merge entity @s {Item:{id:"minecraft:prismarine_crystals",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Water Crystal ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'water_crystal'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Grants ",italic:false,color:"gray"},{text:"Dolphin\'s Grace ",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Passive",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:": Modifier is applied for the duration of the run",color:"dark_gray"}]
