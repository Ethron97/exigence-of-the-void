scoreboard players set #Total Temp 0
scoreboard players operation #Total Temp += @s cr_embersPickedUp
scoreboard players operation #Total Temp += @s cr_embersEchoPickedUp

tellraw @s [{text:"Ember",italic:false,bold:false,color:"aqua","hover_event": {"action": "show_text","value": [\
{text:"Ember Stats",color:"aqua",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTotal Ember Pings: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_emberPing"},color:"white"}\
,{text:"\nEcho Embers Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersEchoPickedUpL1"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersEchoDroppedL1"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersEchoPickedUpL2"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersEchoDroppedL2"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersEchoPickedUpL3"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersEchoDroppedL3"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersEchoPickedUpL4"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersEchoDroppedL4"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersEchoPickedUp"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersEchoDropped"},color:"dark_gray"}\
,{text:"\nCard Embers Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersPickedUpL1"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersDroppedL1"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersPickedUpL2"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersDroppedL2"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersPickedUpL3"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersDroppedL3"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersPickedUpL4"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersDroppedL4"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_embersPickedUp"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"cr_embersDropped"},color:"dark_gray"}\
,{text:"\nEchos Found: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_echosPickedUp"},color:"white"}\
,{text:"\nEchos Lost: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_echosLost"},color:"white"}\
]}}]
