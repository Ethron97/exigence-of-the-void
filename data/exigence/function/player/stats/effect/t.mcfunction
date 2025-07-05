
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_beastsense'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_circulation'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_detection'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_detectthoughts'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_flicker'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_glimmer'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_invisibility'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_jump'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_regen'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_speed'}
function exigence:player/stats/effect/private/format_time {scoreboard:'t_effect_speed2'}

tellraw @s [{text:"Effects",italic:false,bold:false,color:"yellow","hover_event": {"action": "show_text","value": [\
{text:"Effect Stats ",color:"yellow",italic:false,bold:false},{text:"(profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n(Time with effect)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nBeastsense: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_beastsense_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_beastsense_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_beastsense_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nCirculation: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_circulation_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_circulation_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_circulation_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nDetection: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_detection_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_detection_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_detection_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nDetect Thoughts: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_detectthoughts_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_detectthoughts_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_detectthoughts_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nFlicker: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_flicker_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_flicker_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_flicker_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nGlimmer: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_glimmer_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_glimmer_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_glimmer_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nInvisibility: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_invisibility_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_invisibility_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_invisibility_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nJump Boost: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_jump_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_jump_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_jump_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nRegeneration: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_regen_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_regen_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_regen_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nSpeed: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_speed_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_speed_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_speed_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nSpeed II: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"t_effect_speed2_H","objective":"FormatTime"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_speed2_M","objective":"FormatTime"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"t_effect_speed2_S","objective":"FormatTime"}},{text:"s ",italic:false,bold:false,color:"gray"}\
]}}]

#t_effect_beastsense
#t_effect_circulation
#t_effect_detection
#t_effect_detectthoughts
#t_effect_flicker
#t_effect_glimmer
#t_effect_invisibility
#t_effect_jump
#t_effect_regen
#t_effect_speed
#t_effect_speed2
