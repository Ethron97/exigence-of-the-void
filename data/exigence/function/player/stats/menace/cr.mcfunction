scoreboard players set #TotalMenace Temp 0
scoreboard players operation #TotalMenace Temp += @s profile.data.menace.cr.menace_total
scoreboard players operation #TotalMenace Temp += @s profile.data.menace.cr.menace_extra_total

tellraw @s [{text:"Menace",italic:false,bold:false,color:"dark_purple","hover_event": {"action": "show_text","value": [\
{text:"Menace Stats",color:"dark_purple",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nPersonal: ",color:"gray",italic:false,bold:false}\
,{text:"\n    Sculk Steps: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.gameplay.cr.sculk_steps"},color:"white"}\
,{text:"\n    Nodes Triggered: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_nodes"},color:"white"}\
,{text:"\n    Menace Reduced (Altars): ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.altar.cr.menace_reduced"},color:"white"}\
,{text:"\n",color:"white"}\
,{text:"\nMenace Generated: ",color:"gray",italic:false,bold:false},{"score":{"name":"#TotalMenace","objective":"Temp"},color:"white"}\
,{text:"\n    Before Max Menace: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_total"},color:"white"}\
,{text:"\n        Nodes: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_from_node"},color:"white"}\
,{text:"\n        Sculk: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_from_sculk"},color:"white"}\
,{text:"\n        Other: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_from_other"},color:"white"}\
,{text:"\n        Fatigue: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_from_fatigue"},color:"white"}\
,{text:"\n    After Max Menace: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_extra_total"},color:"dark_purple"}\
,{text:"\n        Nodes: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_extra_from_node"},color:"dark_purple"}\
,{text:"\n        Sculk: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_extra_from_sculk"},color:"dark_purple"}\
,{text:"\n        Other: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_extra_from_other"},color:"dark_purple"}\
,{text:"\n        Fatigue: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.menace.cr.menace_extra_from_fatigue"},color:"dark_purple"}\
]}}]
