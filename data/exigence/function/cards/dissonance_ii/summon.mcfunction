$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Dissonance II ✦ ✘",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Split the echo shard into +1 fragments",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"on level 2. Each fragment has its own",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"🔥 ",italic:false,color:"aqua"},{text:"pool. You must collect all ",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"fragments to succeed",italic:false,color:"gray"}]
