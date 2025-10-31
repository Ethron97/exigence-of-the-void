scoreboard players set #Total Temp 0
scoreboard players operation #Total Temp += @s profile.data.ember.t.embers_picked_up
scoreboard players operation #Total Temp += @s profile.data.ember.t.embers_echo_picked_up

tellraw @s [{text:"Ember",italic:false,bold:false,color:"aqua","hover_event": {"action": "show_text","value": [\
{text:"Ember Stats",color:"aqua",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTotal Ember Pings: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.ember_ping"},color:"white"}\
,{text:"\nEcho Embers Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_picked_up_L1"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_dropped_L1"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_picked_up_L2"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_dropped_L2"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_picked_up_L3"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_dropped_L3"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_picked_up_L4"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_dropped_L4"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_picked_up"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_echo_dropped"},color:"dark_gray"}\
,{text:"\nCard Embers Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_picked_up_L1"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_dropped_L1"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_picked_up_L2"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_dropped_L2"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_picked_up_L3"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_dropped_L3"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_picked_up_L4"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_dropped_L4"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_picked_up"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.ember.t.embers_dropped"},color:"dark_gray"}\
,{text:"\nEchos Found: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.echos_picked_up"},color:"white"}\
,{text:"\nEchos Lost: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.ember.t.echos_lost"},color:"white"}\
]}}]
