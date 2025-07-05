scoreboard players set #deaths Temp 0
scoreboard players operation #deaths Temp += @s t_level1Deaths
scoreboard players operation #deaths Temp += @s t_level2Deaths
scoreboard players operation #deaths Temp += @s t_level3Deaths
scoreboard players operation #deaths Temp += @s t_level4Deaths

scoreboard players operation temp Temp = @s t_damageTaken
scoreboard players operation temp Temp /= 20 number
scoreboard players operation temp2 Temp = @s t_damageAbsorbed
scoreboard players operation temp2 Temp /= 20 number

tellraw @s [{text:"Enemy",italic:false,bold:false,color:"dark_red","hover_event": {"action": "show_text","value": [\
{text:"Enemy Stats",color:"dark_red",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nDamage Taken: ",color:"gray",italic:false,bold:false},{"score":{"name":"temp","objective":"Temp"},color:"white"}\
,{text:" ❤",color:"red",italic:false,bold:false}\
,{text:"\nDamage Absorbed: ",color:"gray",italic:false,bold:false},{"score":{"name":"temp2","objective":"Temp"},color:"white"}\
,{text:" ❤",color:"gold",italic:false,bold:false}\
,{text:"\nTotal Deaths: ",color:"gray",italic:false,bold:false},{"score":{"name":"#deaths","objective":"Temp"},color:"white"}\
,{text:"\nCause of Death:",color:"gray",italic:false,bold:false}\
,{text:"\n    Blaze: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByBlaze"},color:"white"}\
,{text:"\n    Creaking: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByCreaking"},color:"white"}\
,{text:"\n    Endermite: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByEndermite"},color:"white"}\
,{text:"\n    Ravager: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByRavager"},color:"white"}\
,{text:"\n    Vex: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByVex"},color:"white"}\
,{text:"\n    Warden: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByWarden"},color:"white"}\
,{text:"\n    Witch: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByWitch"},color:"white"}\
,{text:"\n    Wither Skeleton: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByWitherSkeleton"},color:"white"}\
,{text:"\n    Dungeon (Other): ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_killedByDungeon"},color:"white"}\
,{text:"\nWardens Angered: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_wardensAngered"},color:"white"}\
]}}]
