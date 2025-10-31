
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_beastsense'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_circulation'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_detection'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_detectthoughts'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_flicker'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_glimmer'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_invisibility'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_jump'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_regen'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_speed1'}
function exigence:player/stats/effect/private/format_time {scoreboard:'profile.data.effects.cr.effect_speed2'}

tellraw @s [{text:"Effects",italic:false,bold:false,color:"yellow","hover_event": {"action": "show_text","value": [\
{text:"Effect Stats ",color:"yellow",italic:false,bold:false},{text:"(run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n(Time with effect)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nBeastsense: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_beastsense.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_beastsense.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_beastsense.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nCirculation: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_circulation.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_circulation.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_circulation.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nDetection: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_detection.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_detection.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_detection.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nDetect Thoughts: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_detectthoughts.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_detectthoughts.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_detectthoughts.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nFlicker: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_flicker.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_flicker.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_flicker.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nGlimmer: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_glimmer.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_glimmer.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_glimmer.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nInvisibility: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_invisibility.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_invisibility.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_invisibility.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nJump Boost: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_jump.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_jump.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_jump.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nRegeneration: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_regen.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_regen.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_regen.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nSpeed: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_speed1.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_speed1.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_speed1.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
,{text:"\n\nSpeed II: ",color:"gray",italic:false,bold:false}\
,{"score":{"name":"profile.data.effects.cr.effect_speed2.H","objective":"format_time"}},{text:"h ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_speed2.M","objective":"format_time"}},{text:"m ",italic:false,bold:false,color:"gray"}\
,{"score":{"name":"profile.data.effects.cr.effect_speed2.S","objective":"format_time"}},{text:"s ",italic:false,bold:false,color:"gray"}\
]}}]
