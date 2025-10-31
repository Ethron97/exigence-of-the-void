scoreboard players set #Total Temp 0
scoreboard players operation #Total Temp += @s profile.data.deck.t.cards_processed_common
scoreboard players operation #Total Temp += @s profile.data.deck.t.cards_processed_uncommon
scoreboard players operation #Total Temp += @s profile.data.deck.t.cards_processed_rare
scoreboard players operation #Total Temp += @s profile.data.deck.t.cards_processed_legendary

scoreboard players set #TotalVoid Temp 0
scoreboard players operation #TotalVoid Temp += @s profile.data.deck.t.cards_processed_common_void
scoreboard players operation #TotalVoid Temp += @s profile.data.deck.t.cards_processed_uncommon_void
scoreboard players operation #TotalVoid Temp += @s profile.data.deck.t.cards_processed_rare_void
scoreboard players operation #TotalVoid Temp += @s profile.data.deck.t.cards_processed_legendary_void

tellraw @s [{text:"Deck",italic:false,bold:false,color:"gray","hover_event": {"action": "show_text","value": [\
{text:"Deck Stats",color:"gray",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nCards Recycled: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_recycled"},color:"white"}\
,{text:"\nCards Spellbound: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_spellbound"},color:"white"}\
,{text:"\nCards Processed: ",color:"gray",italic:false,bold:false},{text:"(Standard+Void)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n        Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"#Total","objective":"Temp"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"#TotalVoid","objective":"Temp"},color:"dark_purple"}\
,{text:"\n     Common: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_common"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_common_void"},color:"dark_purple"}\
,{text:"\n  Uncommon: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_uncommon"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_uncommon_void"},color:"dark_purple"}\
,{text:"\n        Rare: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_rare"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_rare_void"},color:"dark_purple"}\
,{text:"\n Legendary: ",color:"light_purple",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_legendary"},color:"white"}\
,{text:" + ",color:"gray",bold:false,italic:false},{"score":{"name":"@s","objective":"profile.data.deck.t.cards_processed_legendary_void"},color:"dark_purple"}\
]}}]
