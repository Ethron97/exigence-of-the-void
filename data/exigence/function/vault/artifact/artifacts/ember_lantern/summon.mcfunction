$data merge entity @s {Item:{id:"minecraft:soul_lantern",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Ember Lantern ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'ember_lantern'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Embers ",italic:false,color:"gray"},{text:"🔥 ",italic:false,color:"aqua"},{text:"glow ",italic:false,color:"$(effect)"},{text:"while",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"within 10 blocks",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Player Passive",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:": Modifier is applied for the duration of the run",color:"dark_gray"}
