# Summon display showing times triggered

## CONSTRAINTS
#   AS menace node

#====================================================================================================

tag @s add MenaceNodeTriggeredLookup

summon minecraft:text_display ~ ~2.06 ~ {Tags:["MenaceTriggeredDisplay"],billboard:"center",alignment:"left",see_through:true,text:[\
{text:"Times Triggered: ",color:"gray"},{"score":{"name":"@e[type=minecraft:marker,tag=MenaceNode,tag=MenaceNodeTriggeredLookup,limit=1]","objective":"node.data.menace.times_triggered"},color:"dark_purple"}\
]}

tag @s remove MenaceNodeTriggeredLookup
