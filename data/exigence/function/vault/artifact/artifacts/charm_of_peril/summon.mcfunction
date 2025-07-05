$data merge entity @s {Item:{id:"minecraft:fermented_spider_eye",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Charm of Peril ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'charm_of_peril'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Increase chances of a deeper echo",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"},{text:" on Echo level",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Dungeon Passive (Coop Stackable ✔)",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:"Modifier is applied for the duration of the run",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:"(Coop Stackable ✔)",color:"dark_gray"}
