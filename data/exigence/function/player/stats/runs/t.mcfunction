# Get total attempts/deaths/wins
scoreboard players set #attempts Temp 0
scoreboard players operation #attempts Temp += @s t_level1Attempts
scoreboard players operation #attempts Temp += @s t_level2Attempts
scoreboard players operation #attempts Temp += @s t_level3Attempts
scoreboard players operation #attempts Temp += @s t_level4Attempts

scoreboard players set #deaths Temp 0
scoreboard players operation #deaths Temp += @s t_level1Deaths
scoreboard players operation #deaths Temp += @s t_level2Deaths
scoreboard players operation #deaths Temp += @s t_level3Deaths
scoreboard players operation #deaths Temp += @s t_level4Deaths

scoreboard players set #wins Temp 0
scoreboard players operation #wins Temp += @s t_level1Wins
scoreboard players operation #wins Temp += @s t_level2Wins
scoreboard players operation #wins Temp += @s t_level3Wins
scoreboard players operation #wins Temp += @s t_level4Wins

tellraw @s [{text:"Runs",italic:false,bold:false,color:"white","hover_event":{"action":"show_text","value":[\
{text:"Run Stats",color:"white",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n               Runs / Deaths / Wins",color:"gray",italic:false,bold:false}\
,{text:"\nTotal         ",color:"gray",italic:false,bold:false},{"score":{"name":"#attempts","objective":"Temp"},color:"white",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"#deaths","objective":"Temp"},color:"dark_red",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"#wins","objective":"Temp"},color:"white",bold:false}\
,{text:"\nLevel 1      ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level1Attempts"},color:"white",bold:false}\
,{text:"   / ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level1Deaths"},color:"dark_red",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level1Wins"},color:"white",bold:false}\
,{text:"\nLevel 2      ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level2Attempts"},color:"white",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level2Deaths"},color:"dark_red",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level2Wins"},color:"white",bold:false}\
,{text:"\nLevel 3      ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level3Attempts"},color:"white",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level3Deaths"},color:"dark_red",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level3Wins"},color:"white",bold:false}\
,{text:"\nLevel 4      ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level4Attempts"},color:"white",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level4Deaths"},color:"dark_red",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level4Wins"},color:"white",bold:false}\
,{text:"\nLevel 5      ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_level5Attempts"},color:"aqua",bold:false}\
,{text:"\nMax Menace ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_maxMenaceReached"},color:"dark_purple",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_maxMenaceDeaths"},color:"dark_red",bold:false}\
,{text:"  /  ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_maxMenaceWins"},color:"dark_purple",bold:false}\
]}}]
