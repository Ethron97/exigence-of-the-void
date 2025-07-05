scoreboard players set #Total Temp 0
scoreboard players operation #Total Temp += @s t_cardsProcessedCommon
scoreboard players operation #Total Temp += @s t_cardsProcessedUncommon
scoreboard players operation #Total Temp += @s t_cardsProcessedRare
scoreboard players operation #Total Temp += @s t_cardsProcessedLegendary

scoreboard players set #TotalVoid Temp 0
scoreboard players operation #TotalVoid Temp += @s t_cardsProcessedCommonVoid
scoreboard players operation #TotalVoid Temp += @s t_cardsProcessedUncommonVoid
scoreboard players operation #TotalVoid Temp += @s t_cardsProcessedRareVoid
scoreboard players operation #TotalVoid Temp += @s t_cardsProcessedLegendaryVoid

tellraw @s [{text:"Deck",italic:false,bold:false,color:"white","hover_event": {"action": "show_text","value": [\
{text:"Deck Stats",color:"white",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nCards Recycled: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_cardsRecycled"},color:"white"}\
,{text:"\nCards Spellbound: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_cardsSpellbound"},color:"white"}\
,{text:"\nCards Processed: ",color:"gray",italic:false,bold:false},{text:"(Standard+Void)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n        Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"#Total","objective":"Temp"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"#TotalVoid","objective":"Temp"},color:"dark_purple"}\
,{text:"\n     Common: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"t_cardsProcessedCommon"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"t_cardsProcessedCommonVoid"},color:"dark_purple"}\
,{text:"\n  Uncommon: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"t_cardsProcessedUncommon"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"t_cardsProcessedUncommonVoid"},color:"dark_purple"}\
,{text:"\n        Rare: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"t_cardsProcessedRare"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"t_cardsProcessedRareVoid"},color:"dark_purple"}\
,{text:"\n Legendary: ",color:"light_purple",italic:false,bold:false},{"score":{"name":"@s","objective":"t_cardsProcessedLegendary"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"t_cardsProcessedLegendaryVoid"},color:"dark_purple"}\
]}}]
