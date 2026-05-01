# Summon display showing max number of tries to drop treasure this node reached

## CONSTRAINTS
#   AS treasure node

#====================================================================================================

tag @s add TreasureNodeLookup

summon minecraft:text_display ~ ~2.06 ~ {Tags:["TreasureDropTriesDisplay"],billboard:"center",alignment:"left",see_through:true,text:[\
{text:"Highest Drop Tries: ",color:"gray"},{"score":{"name":"@e[type=minecraft:marker,tag=TreasureNode,tag=TreasureNodeLookup,limit=1]","objective":"node.data.treasure.highest_drop_tries"},color:"gold"}\
]}

tag @s remove TreasureNodeLookup
