
# Time spent
scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.regulation_ticks
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #cr_gameMinutes tick_counter = out.m tick_convert
scoreboard players operation #cr_gameSeconds tick_counter = out.s tick_convert

scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.max_menace_ticks
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #cr_menaceMinutes tick_counter = out.m tick_convert
scoreboard players operation #cr_menaceSeconds tick_counter = out.s tick_convert

# LEVEL 1
scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.ticks_alive_L1
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL1_m tick_counter = out.m tick_convert
scoreboard players operation #aliveL1_s tick_counter = out.s tick_convert

scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.max_menace_ticks_L1
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL1_m tick_counter = out.m tick_convert
scoreboard players operation #menaceL1_s tick_counter = out.s tick_convert

# LEVEL 2
scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.ticks_alive_L2
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL2_m tick_counter = out.m tick_convert
scoreboard players operation #aliveL2_s tick_counter = out.s tick_convert

scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.max_menace_ticks_L2
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL2_m tick_counter = out.m tick_convert
scoreboard players operation #menaceL2_s tick_counter = out.s tick_convert

# LEVEL 3
scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.ticks_alive_L3
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL3_m tick_counter = out.m tick_convert
scoreboard players operation #aliveL3_s tick_counter = out.s tick_convert

scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.max_menace_ticks_L3
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL3_m tick_counter = out.m tick_convert
scoreboard players operation #menaceL3_s tick_counter = out.s tick_convert

# LEVEL 4
scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.ticks_alive_L4
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL4_m tick_counter = out.m tick_convert
scoreboard players operation #aliveL4_s tick_counter = out.s tick_convert

scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.max_menace_ticks_L4
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL4_m tick_counter = out.m tick_convert
scoreboard players operation #menaceL4_s tick_counter = out.s tick_convert

# DEAD
scoreboard players operation in.ticks tick_convert = @s profile.data.gametime.cr.ticks_dead
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #dead_m tick_counter = out.m tick_convert
scoreboard players operation #dead_s tick_counter = out.s tick_convert

tellraw @s [{text:"Time",italic:false,bold:false,color:"white","hover_event": {"action": "show_text","value": [\
{text:"Time Stats",color:"white",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTime In Dungeon: ",color:"gray",italic:false,bold:false},{text:" (alive / ",color:"dark_gray",italic:false,bold:false}\
,{text:"max menace",color:"dark_purple",italic:false,bold:false},{text:")",color:"dark_gray",italic:false,bold:false}\
,{text:"\n      Total: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#cr_gameMinutes","objective":"tick_counter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#cr_gameSeconds","objective":"tick_counter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#cr_menaceMinutes","objective":"tick_counter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#cr_menaceSeconds","objective":"tick_counter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 1: ",color:"gray",italic:false,bold:false,"underlined":false}\
,{"score":{"name":"#aliveL1_m","objective":"tick_counter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL1_s","objective":"tick_counter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL1_m","objective":"tick_counter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL1_s","objective":"tick_counter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 2: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#aliveL2_m","objective":"tick_counter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL2_s","objective":"tick_counter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL2_m","objective":"tick_counter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL2_s","objective":"tick_counter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 3: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#aliveL3_m","objective":"tick_counter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL3_s","objective":"tick_counter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL3_m","objective":"tick_counter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL3_s","objective":"tick_counter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 4: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#aliveL4_m","objective":"tick_counter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL4_s","objective":"tick_counter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL4_m","objective":"tick_counter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL4_s","objective":"tick_counter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n\nDead: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#dead_m","objective":"tick_counter"},color:"red"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#dead_s","objective":"tick_counter"},color:"red"},{text:"s",italic:false,bold:false,color:"gray"}\
]}}]
