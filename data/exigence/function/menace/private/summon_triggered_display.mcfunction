## CONSTRAINTS
#   AS menace node

## INPUT
#   INT amount

#=====================================================================================================

tag @s add MenaceNodeTriggeredLookup

summon minecraft:text_display ~ ~2.51 ~ {Tags:["MenaceTriggeredDisplay"],billboard:"center",alignment:"left",see_through:true,text:[\
{text:"Times Triggered: ",color:"gray"},{"score":{"name":"@e[type=minecraft:armor_stand,tag=MenaceNodeTriggeredLookup]","objective":"node.data.menace.times_triggered"},color:"dark_purple"}\
]}

tag @s remove MenaceNodeTriggeredLookup
