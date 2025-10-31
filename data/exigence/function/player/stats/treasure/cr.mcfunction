## COINS

# Sum coins collected
scoreboard players set coins.dropped temp.treasure_stats 0
scoreboard players set coins.dropped.L1 temp.treasure_stats 0
scoreboard players set coins.dropped.L2 temp.treasure_stats 0
scoreboard players set coins.dropped.L3 temp.treasure_stats 0
scoreboard players set coins.dropped.L4 temp.treasure_stats 0
scoreboard players operation coins.dropped.L1 temp.treasure_stats += @s profile.data.treasure.cr.coins_dropped_L1
scoreboard players operation coins.dropped.L1 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_dropped_L1
scoreboard players operation coins.dropped.L2 temp.treasure_stats += @s profile.data.treasure.cr.coins_dropped_L2
scoreboard players operation coins.dropped.L2 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_dropped_L2
scoreboard players operation coins.dropped.L3 temp.treasure_stats += @s profile.data.treasure.cr.coins_dropped_L3
scoreboard players operation coins.dropped.L3 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_dropped_L3
scoreboard players operation coins.dropped.L4 temp.treasure_stats += @s profile.data.treasure.cr.coins_dropped_L4
scoreboard players operation coins.dropped.L4 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_dropped_L4

scoreboard players set coins.pickedup temp.treasure_stats 0
scoreboard players set coins.pickedup.L1 temp.treasure_stats 0
scoreboard players set coins.pickedup.L2 temp.treasure_stats 0
scoreboard players set coins.pickedup.L3 temp.treasure_stats 0
scoreboard players set coins.pickedup.L4 temp.treasure_stats 0
scoreboard players operation coins.pickedup.L1 temp.treasure_stats += @s profile.data.treasure.cr.coins_picked_up_L1
scoreboard players operation coins.pickedup.L1 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_picked_up_L1
scoreboard players operation coins.pickedup.L2 temp.treasure_stats += @s profile.data.treasure.cr.coins_picked_up_L2
scoreboard players operation coins.pickedup.L2 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_picked_up_L2
scoreboard players operation coins.pickedup.L3 temp.treasure_stats += @s profile.data.treasure.cr.coins_picked_up_L3
scoreboard players operation coins.pickedup.L3 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_picked_up_L3
scoreboard players operation coins.pickedup.L4 temp.treasure_stats += @s profile.data.treasure.cr.coins_picked_up_L4
scoreboard players operation coins.pickedup.L4 temp.treasure_stats += @s profile.data.treasure.cr.coins_bonus_picked_up_L4

tellraw @s [{text:"Treasure",italic:false,bold:false,color:"gold","hover_event": {"action": "show_text","value": [\
{text:"Treasure Stats",color:"gold",italic:false,bold:false},{text:" (run)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTotal Treasure Pings: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping"},color:"white"}\
,{text:"\nCoins Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"coins.pickedup.L1","objective":"temp.treasure_stats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"coins.dropped.L1","objective":"temp.treasure_stats"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"coins.pickedup.L2","objective":"temp.treasure_stats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"coins.dropped.L2","objective":"temp.treasure_stats"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"coins.pickedup.L3","objective":"temp.treasure_stats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"coins.dropped.L3","objective":"temp.treasure_stats"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"coins.pickedup.L4","objective":"temp.treasure_stats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"coins.dropped.L4","objective":"temp.treasure_stats"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coins_picked_up_total"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coins_dropped_total"},color:"dark_gray"}\
,{text:"\nFragments Collected",color:"gray",italic:false,bold:false}\
,{text:"\n    From Treasure: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.research_picked_up"},color:"white"}\
,{text:"\n    From Pots: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.research_pot_picked_up"},color:"white"}\
,{text:"\nGlint Collected",color:"gray",italic:false,bold:false}\
,{text:"\n    From Pots: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.money_picked_up"},color:"white"}\
,{text:"\nVaults",color:"gray",italic:false,bold:false}\
,{text:"\n    Keys Picked Up: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.vaults.cr.vault_keys_picked_up"},color:"white"}\
,{text:"\n    Vaults Opened: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.vaults.cr.vaults_opened"},color:"white"}\
,{text:"\nPots Broken: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.gameplay.cr.pots_broken"},color:"white"}\
]}},{text:"      "}\
,{text:"(Cards)",italic:true,bold:false,color:"gold","hover_event": {"action": "show_text","value": [\
{text:"Treasure Stats (Cards)",color:"gold",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nCoins Picked Up 🔘",color:"white",italic:false,bold:false},{text:" / ",color:"dark_gray"}\
,{text:"Coins Dropped",color:"dark_gray",italic:false,bold:false},{text:" / ",color:"dark_gray"}\
,{text:"Treasure Pings 🍪",color:"gold",italic:false,bold:false}\
,{text:"\n            Passive: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_passive"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_passive"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_passive"},color:"gold"}\
\
,{text:"\n   Fallow Coffers: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_fallow_coffers"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_fallow_coffers"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_fallow_coffers"},color:"gold"}\
,{text:"\n          Herbalism: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_herbalism"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_herbalism"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_herbalism"},color:"gold"}\
,{text:"\nTreasure Hunter: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_treasure_hunter"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_treasure_hunter"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_treasure_hunter"},color:"gold"}\
\
,{text:"\n    Loot and Fruit: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_loot_and_fruit"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_loot_and_fruit"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_loot_and_fruit"},color:"gold"}\
,{text:"\n   Loot and Scoot: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_loot_and_scoot"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_loot_and_scoot"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_loot_and_scoot"},color:"gold"}\
,{text:"\n        Trust Fund: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_trust_fund"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_trust_fund"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_trust_fund"},color:"gold"}\
\
,{text:"\n         Cash Crop: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_cash_crop"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_cash_crop"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_cash_crop"},color:"gold"}\
,{text:"\n         Circulation: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_circulation"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_circulation"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_circulation"},color:"gold"}\
,{text:"\n           Opulence: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_opulance"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_opulance"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_opulance"},color:"gold"}\
,{text:"\n         Prosperity: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_prosperity"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coindrop_prosperity"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"profile.data.treasure.cr.ping_prosperity"},color:"gold"}\
\
,{text:"\n       Chrysopoeia: ",color:"light_purple",italic:false,bold:false},{"score":{"name":"@s","objective":"profile.data.treasure.cr.coinpickup_chrysopoeia"},color:"white"}\
,{text:" / na / na",color:"dark_gray"}\
]}}]
