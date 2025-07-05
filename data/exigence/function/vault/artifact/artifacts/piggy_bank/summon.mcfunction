$data merge entity @s {Item:{id:"minecraft:shulker_shell",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Piggy Bank ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'piggy_bank'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Up to 2 coins ",italic:false,color:"gray"},{text:"🔘 ",italic:false,color:"gold"},{text:"are ",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Soulbound ",italic:false,color:"dark_gray"},{text:"on death",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"After converting coins to ",italic:false,color:"gray"},{text:"💎",color:"gold",italic:false},{text:", leftover",color:"gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"coins are stored in the Piggy Bank.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"To break open, drop while in the hub.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Passive",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:": Modifier is applied for the duration of the run",color:"dark_gray"}]
