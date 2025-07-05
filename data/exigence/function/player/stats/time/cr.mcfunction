
# Time spent
scoreboard players operation in.ticks TickConvert = @s cr_regulationTicks
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #cr_gameMinutes TickCounter = out.m TickConvert
scoreboard players operation #cr_gameSeconds TickCounter = out.s TickConvert

scoreboard players operation in.ticks TickConvert = @s cr_maxMenaceTicks
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #cr_menaceMinutes TickCounter = out.m TickConvert
scoreboard players operation #cr_menaceSeconds TickCounter = out.s TickConvert

# LEVEL 1
scoreboard players operation in.ticks TickConvert = @s cr_ticksAliveL1
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL1_m TickCounter = out.m TickConvert
scoreboard players operation #aliveL1_s TickCounter = out.s TickConvert

scoreboard players operation in.ticks TickConvert = @s cr_maxMenaceTicksL1
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL1_m TickCounter = out.m TickConvert
scoreboard players operation #menaceL1_s TickCounter = out.s TickConvert

# LEVEL 2
scoreboard players operation in.ticks TickConvert = @s cr_ticksAliveL2
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL2_m TickCounter = out.m TickConvert
scoreboard players operation #aliveL2_s TickCounter = out.s TickConvert

scoreboard players operation in.ticks TickConvert = @s cr_maxMenaceTicksL2
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL2_m TickCounter = out.m TickConvert
scoreboard players operation #menaceL2_s TickCounter = out.s TickConvert

# LEVEL 3
scoreboard players operation in.ticks TickConvert = @s cr_ticksAliveL3
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL3_m TickCounter = out.m TickConvert
scoreboard players operation #aliveL3_s TickCounter = out.s TickConvert

scoreboard players operation in.ticks TickConvert = @s cr_maxMenaceTicksL3
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL3_m TickCounter = out.m TickConvert
scoreboard players operation #menaceL3_s TickCounter = out.s TickConvert

# LEVEL 4
scoreboard players operation in.ticks TickConvert = @s cr_ticksAliveL4
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #aliveL4_m TickCounter = out.m TickConvert
scoreboard players operation #aliveL4_s TickCounter = out.s TickConvert

scoreboard players operation in.ticks TickConvert = @s cr_maxMenaceTicksL4
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #menaceL4_m TickCounter = out.m TickConvert
scoreboard players operation #menaceL4_s TickCounter = out.s TickConvert

# DEAD
scoreboard players operation in.ticks TickConvert = @s cr_ticksDead
function exigence:misc/general/convert_tick_to_time
scoreboard players operation #dead_m TickCounter = out.m TickConvert
scoreboard players operation #dead_s TickCounter = out.s TickConvert

tellraw @s [{text:"Time",italic:false,bold:false,color:"white","hover_event": {"action": "show_text","value": [\
{text:"Time Stats",color:"white",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTime In Dungeon: ",color:"gray",italic:false,bold:false},{text:" (alive / ",color:"dark_gray",italic:false,bold:false}\
,{text:"max menace",color:"dark_purple",italic:false,bold:false},{text:")",color:"dark_gray",italic:false,bold:false}\
,{text:"\n      Total: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#cr_gameMinutes","objective":"TickCounter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#cr_gameSeconds","objective":"TickCounter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#cr_menaceMinutes","objective":"TickCounter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#cr_menaceSeconds","objective":"TickCounter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 1: ",color:"gray",italic:false,bold:false,"underlined":false}\
,{"score":{"name":"#aliveL1_m","objective":"TickCounter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL1_s","objective":"TickCounter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL1_m","objective":"TickCounter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL1_s","objective":"TickCounter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 2: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#aliveL2_m","objective":"TickCounter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL2_s","objective":"TickCounter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL2_m","objective":"TickCounter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL2_s","objective":"TickCounter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 3: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#aliveL3_m","objective":"TickCounter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL3_s","objective":"TickCounter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL3_m","objective":"TickCounter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL3_s","objective":"TickCounter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n   Level 4: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#aliveL4_m","objective":"TickCounter"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#aliveL4_s","objective":"TickCounter"}},{text:"s   ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL4_m","objective":"TickCounter"},color:"dark_purple"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#menaceL4_s","objective":"TickCounter"},color:"dark_purple"},{text:"s",italic:false,bold:false,color:"gray"}\
\
,{text:"\n\nDead: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"#dead_m","objective":"TickCounter"},color:"red"},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"#dead_s","objective":"TickCounter"},color:"red"},{text:"s",italic:false,bold:false,color:"gray"}\
]}}]
