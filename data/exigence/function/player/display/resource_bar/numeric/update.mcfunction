# Called from player tick

## CONSTRAINTS
#   AS player with career.settings.resource_actionbar_style = 2

#=============================================================================================================

# This one is pretty easy...

#title @s actionbar ["",{text:"[",color:"green"},{"score":{"name":"Current.Green","objective":"game.resources"},color:"dark_green"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"Max.Green","objective":"game.resources"},color:"gray"},{text:"]",color:"green"}\
#,{text:"   "},{text:"[",color:"red"},{"score":{"name":"Current.Red","objective":"game.resources"},color:"dark_red"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"Max.Red","objective":"game.resources"},color:"gray"},{text:"]",color:"red"}\
#,{text:"   "},{text:"[",color:"dark_aqua"},{"score":{"name":"Current.Aqua","objective":"game.resources"},color:"aqua"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"Max.Aqua","objective":"game.resources"},color:"gray"},{text:"]",color:"dark_aqua"}]

title @s actionbar ["",{"score":{"name":"Current.Green","objective":"game.resources"},color:"dark_green"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"Max.Green","objective":"game.resources"},color:"gray"}\
,{text:"   "},{"score":{"name":"Current.Red","objective":"game.resources"},color:"dark_red"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"Max.Red","objective":"game.resources"},color:"gray"}\
,{text:"   "},{"score":{"name":"Current.Aqua","objective":"game.resources"},color:"aqua"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"Max.Aqua","objective":"game.resources"},color:"gray"}]
