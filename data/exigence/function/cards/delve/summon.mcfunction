$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Delve ✦ ✘",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Increases chance for deeper ",italic:false,color:"gray"},{text:"Echo Shards",color:"blue"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Deeper = harder to get, but gives more ",italic:false,color:"dark_gray"},{text:"🔥",color:"aqua"},{text:")",color:"dark_gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"☢ ",italic:false,color:"red"},{text:"on primary ",italic:false,color:"gray"},{text:"Echo Shard ",italic:false,color:"blue"},{text:"level",italic:false,color:"gray"}]
