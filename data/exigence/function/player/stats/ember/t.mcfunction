scoreboard players set #Total Temp 0
scoreboard players operation #Total Temp += @s t_embersPickedUp
scoreboard players operation #Total Temp += @s t_embersEchoPickedUp

tellraw @s [{text:"Ember",italic:false,bold:false,color:"aqua","hover_event": {"action": "show_text","value": [\
{text:"Ember Stats",color:"aqua",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTotal Ember Pings: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_emberPing"},color:"white"}\
,{text:"\nEcho Embers Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersEchoPickedUpL1"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersEchoDroppedL1"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersEchoPickedUpL2"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersEchoDroppedL2"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersEchoPickedUpL3"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersEchoDroppedL3"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersEchoPickedUpL4"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersEchoDroppedL4"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersEchoPickedUp"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersEchoDropped"},color:"dark_gray"}\
,{text:"\nCard Embers Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersPickedUpL1"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersDroppedL1"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersPickedUpL2"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersDroppedL2"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersPickedUpL3"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersDroppedL3"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersPickedUpL4"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersDroppedL4"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_embersPickedUp"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_embersDropped"},color:"dark_gray"}\
,{text:"\nEchos Found: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_echosPickedUp"},color:"white"}\
,{text:"\nEchos Lost: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_echosLost"},color:"white"}\
]}}]
