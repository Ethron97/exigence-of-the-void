scoreboard players operation #temp Temp = @s profile.data.misc.t.damage_taken
scoreboard players operation #temp Temp /= 20 number
scoreboard players operation #temp2 Temp = @s profile.data.misc.t.damage_absorbed
scoreboard players operation #temp2 Temp /= 20 number

tellraw @s [{text:"Enemy",italic:false,bold:false,color:"dark_red","hover_event": {"action": "show_text","value": [\
{text:"Enemy Stats",color:"dark_red",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nDamage Taken: ",color:"gray",italic:false,bold:false},{"score":{"name":"#temp","objective":"Temp"},color:"white"}\
,{text:" ❤",color:"red",italic:false,bold:false}\
,{text:"\nDamage Absorbed: ",color:"gray",italic:false,bold:false},{"score":{"name":"#temp2","objective":"Temp"},color:"white"}\
,{text:" ❤",color:"gold",italic:false,bold:false}\
,{text:"\nTotal Deaths: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.winloss.t.deaths_total"},color:"white"}\
,{text:"\nCause of Death:",color:"gray",italic:false,bold:false}\
,{text:"\n    Blaze: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_blaze"},color:"white"}\
,{text:"\n    Creaking: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_creaking"},color:"white"}\
,{text:"\n    Endermite: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_endermite"},color:"white"}\
,{text:"\n    Ravager: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_ravager"},color:"white"}\
,{text:"\n    Vex: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_vex"},color:"white"}\
,{text:"\n    Warden: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_warden"},color:"white"}\
,{text:"\n    Witch: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_witch"},color:"white"}\
,{text:"\n    Wither Skeleton: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_wither_skeleton"},color:"white"}\
,{text:"\n    Dungeon (Other): ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.killed_by_dungeon"},color:"white"}\
,{text:"\nWardens Angered: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.enemy.t.wardens_angered"},color:"white"}\
]}}]
