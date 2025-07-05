$summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:brick",count:1,components:{"minecraft:custom_model_data":{"strings":["bundle"]},"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},{text:" Satchel ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}},Tags:["NAS"]}

data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:custom_data" set value {item_name:'satchel'}

$data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:lore" append value {text:""}
data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:lore" append value [{text:"Bag ",italic:false,color:"gray"},{text:"💼 ",italic:false,color:"yellow"},{text:"item limit increased by 1 ",italic:false,color:"gray"}]
data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:lore" append value {text:""}
data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:lore" append value [{text:"Passive: Effect is applied for",color:"dark_gray"}]
data modify entity @e[type=item,tag=NAS,limit=1] Item.components."minecraft:lore" append value [{text:"the duration of the run",color:"dark_gray"}]
