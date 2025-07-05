scoreboard players set #TotalMenace Temp 0
scoreboard players operation #TotalMenace Temp += @s cr_menaceTotal
scoreboard players operation #TotalMenace Temp += @s cr_menaceExtraTotal

tellraw @s [{text:"Menace",italic:false,bold:false,color:"dark_purple","hover_event": {"action": "show_text","value": [\
{text:"Menace Stats",color:"dark_purple",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nPersonal: ",color:"gray",italic:false,bold:false}\
,{text:"\n    Sculk Steps: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_sculkSteps"},color:"white"}\
,{text:"\n    Nodes Triggered: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceNodes"},color:"white"}\
,{text:"\n    Menace Reduced (Altars): ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceReduced"},color:"white"}\
,{text:"\n",color:"white"}\
,{text:"\nMenace Generated: ",color:"gray",italic:false,bold:false},{"score":{"name":"#TotalMenace","objective":"Temp"},color:"white"}\
,{text:"\n    Before Max Menace: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceTotal"},color:"white"}\
,{text:"\n        Nodes: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceFromNode"},color:"white"}\
,{text:"\n        Sculk: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceFromSculk"},color:"white"}\
,{text:"\n        Other: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceFromOther"},color:"white"}\
,{text:"\n        Fatigue: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceFromFatigue"},color:"white"}\
,{text:"\n    After Max Menace: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceExtraTotal"},color:"dark_purple"}\
,{text:"\n        Nodes: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceExtraFromNode"},color:"dark_purple"}\
,{text:"\n        Sculk: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceExtraFromSculk"},color:"dark_purple"}\
,{text:"\n        Other: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceExtraFromOther"},color:"dark_purple"}\
,{text:"\n        Fatigue: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_menaceExtraFromFatigue"},color:"dark_purple"}\
]}}]
