$data merge entity @s {Item:{id:"minecraft:brick",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Satchel ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'satchel'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["bundle"]
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Consumable ",italic:false,color:"gray"},{text:"🥣🧪💼 ",italic:false,color:"yellow"},{text:"item",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"limit increased by 1",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Passive",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:": Modifier is applied for the duration of the run",color:"dark_gray"}]
