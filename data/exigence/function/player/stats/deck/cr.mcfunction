scoreboard players set #Total Temp 0
scoreboard players operation #Total Temp += @s cr_cardsProcessedCommon
scoreboard players operation #Total Temp += @s cr_cardsProcessedUncommon
scoreboard players operation #Total Temp += @s cr_cardsProcessedRare
scoreboard players operation #Total Temp += @s cr_cardsProcessedLegendary

scoreboard players set #TotalVoid Temp 0
scoreboard players operation #TotalVoid Temp += @s cr_cardsProcessedCommonVoid
scoreboard players operation #TotalVoid Temp += @s cr_cardsProcessedUncommonVoid
scoreboard players operation #TotalVoid Temp += @s cr_cardsProcessedRareVoid
scoreboard players operation #TotalVoid Temp += @s cr_cardsProcessedLegendaryVoid

tellraw @s [{text:"Deck",italic:false,bold:false,color:"gray","hover_event": {"action": "show_text","value": [\
{text:"Deck Stats",color:"gray",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nCards Remaining: ",color:"gray",italic:false,bold:false},{"score":{"name":"Cards","objective":"DungeonRun"},color:"white"}\
,{text:"\nFatigue Level: ",color:"gray",italic:false,bold:false},{"score":{"name":"Fatigue","objective":"DungeonRun"},color:"white"}\
,{text:"\n",color:"gray",italic:false,bold:false}\
,{text:"\nCards Recycled: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_cardsRecycled"},color:"white"}\
,{text:"\nCards Spellbound: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_cardsSpellbound"},color:"white"}\
,{text:"\nCards Processed: ",color:"gray",italic:false,bold:false},{text:"(Standard+Void)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n        Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"#Total","objective":"Temp"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"#TotalVoid","objective":"Temp"},color:"dark_purple"}\
,{text:"\n     Common: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_cardsProcessedCommon"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"cr_cardsProcessedCommonVoid"},color:"dark_purple"}\
,{text:"\n  Uncommon: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_cardsProcessedUncommon"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"cr_cardsProcessedUncommonVoid"},color:"dark_purple"}\
,{text:"\n        Rare: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_cardsProcessedRare"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"cr_cardsProcessedRareVoid"},color:"dark_purple"}\
,{text:"\n Legendary: ",color:"light_purple",italic:false,bold:false},{"score":{"name":"@s","objective":"cr_cardsProcessedLegendaryVoid"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"cr_cardsProcessedLegendaryVoid"},color:"dark_purple"}\
]}}]
