# Called from player tick

## CONSTRAINTS
#   AS player with career.settings.resource_actionbar_style = 2

#====================================================================================================

# This one is pretty easy...

#title @s actionbar ["",{text:"[",color:"green"},{"score":{"name":"green.current","objective":"game.resources"},color:"dark_green"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"green.max","objective":"game.resources"},color:"gray"},{text:"]",color:"green"}\
#,{text:"   "},{text:"[",color:"red"},{"score":{"name":"red.current","objective":"game.resources"},color:"dark_red"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"red.max","objective":"game.resources"},color:"gray"},{text:"]",color:"red"}\
#,{text:"   "},{text:"[",color:"dark_aqua"},{"score":{"name":"aqua.current","objective":"game.resources"},color:"aqua"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"aqua.max","objective":"game.resources"},color:"gray"},{text:"]",color:"dark_aqua"}]

title @s actionbar ["",{"score":{"name":"green.current","objective":"game.resources"},color:"dark_green"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"green.max","objective":"game.resources"},color:"gray"}\
,{text:"   "},{"score":{"name":"red.current","objective":"game.resources"},color:"dark_red"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"red.max","objective":"game.resources"},color:"gray"}\
,{text:"   "},{"score":{"name":"aqua.current","objective":"game.resources"},color:"aqua"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"aqua.max","objective":"game.resources"},color:"gray"}]
