$data merge entity @s {Item:{id:"minecraft:heart_of_the_sea",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Gathering Storm ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'gathering_storm'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Your item pickup radius is increased",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"depending on your level of ",italic:false,color:"gray"},{text:"Speed",italic:false,color:"$(effect)"},{text:":",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"  + (Speed + 1) ^ 2",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Passive",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value {text:"the duration of the run",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:"(Coop Stackable X)",color:"dark_gray"}
