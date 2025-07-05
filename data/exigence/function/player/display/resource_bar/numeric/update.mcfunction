# Called from player tick

## CONSTRAINTS
#   AS player with s_resourceActionbar = 2

#=============================================================================================================

# This one is pretty easy...

#title @s actionbar ["",{text:"[",color:"green"},{"score":{"name":"Green","objective":"Resources"},color:"dark_green"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"MaxGreen","objective":"Resources"},color:"gray"},{text:"]",color:"green"}\
#,{text:"   "},{text:"[",color:"red"},{"score":{"name":"Red","objective":"Resources"},color:"dark_red"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"MaxRed","objective":"Resources"},color:"gray"},{text:"]",color:"red"}\
#,{text:"   "},{text:"[",color:"dark_aqua"},{"score":{"name":"Aqua","objective":"Resources"},color:"aqua"},{text:"/",color:"dark_gray"}\
#,{"score":{"name":"MaxAqua","objective":"Resources"},color:"gray"},{text:"]",color:"dark_aqua"}]

title @s actionbar ["",{"score":{"name":"Green","objective":"Resources"},color:"dark_green"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"MaxGreen","objective":"Resources"},color:"gray"}\
,{text:"   "},{"score":{"name":"Red","objective":"Resources"},color:"dark_red"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"MaxRed","objective":"Resources"},color:"gray"}\
,{text:"   "},{"score":{"name":"Aqua","objective":"Resources"},color:"aqua"},{text:"/",color:"dark_gray"}\
,{"score":{"name":"MaxAqua","objective":"Resources"},color:"gray"}]
