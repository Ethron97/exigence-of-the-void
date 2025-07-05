## COINS

# Sum coins collected
scoreboard players set CoinsDropped TreasureStats 0
scoreboard players set CoinsDroppedL1 TreasureStats 0
scoreboard players set CoinsDroppedL2 TreasureStats 0
scoreboard players set CoinsDroppedL3 TreasureStats 0
scoreboard players set CoinsDroppedL4 TreasureStats 0
scoreboard players operation CoinsDroppedL1 TreasureStats += @s t_coinsDroppedL1
scoreboard players operation CoinsDroppedL1 TreasureStats += @s t_coinsBonusDroppedL1
scoreboard players operation CoinsDroppedL2 TreasureStats += @s t_coinsDroppedL2
scoreboard players operation CoinsDroppedL2 TreasureStats += @s t_coinsBonusDroppedL2
scoreboard players operation CoinsDroppedL3 TreasureStats += @s t_coinsDroppedL3
scoreboard players operation CoinsDroppedL3 TreasureStats += @s t_coinsBonusDroppedL3
scoreboard players operation CoinsDroppedL4 TreasureStats += @s t_coinsDroppedL4
scoreboard players operation CoinsDroppedL4 TreasureStats += @s t_coinsBonusDroppedL4
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL1 TreasureStats
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL2 TreasureStats
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL3 TreasureStats
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL4 TreasureStats

scoreboard players set CoinsPickedUp TreasureStats 0
scoreboard players set CoinsPickedUpL1 TreasureStats 0
scoreboard players set CoinsPickedUpL2 TreasureStats 0
scoreboard players set CoinsPickedUpL3 TreasureStats 0
scoreboard players set CoinsPickedUpL4 TreasureStats 0
scoreboard players operation CoinsPickedUpL1 TreasureStats += @s t_coinsPickedUpL1
scoreboard players operation CoinsPickedUpL1 TreasureStats += @s t_coinsBonusPickedUpL1
scoreboard players operation CoinsPickedUpL2 TreasureStats += @s t_coinsPickedUpL2
scoreboard players operation CoinsPickedUpL2 TreasureStats += @s t_coinsBonusPickedUpL2
scoreboard players operation CoinsPickedUpL3 TreasureStats += @s t_coinsPickedUpL3
scoreboard players operation CoinsPickedUpL3 TreasureStats += @s t_coinsBonusPickedUpL3
scoreboard players operation CoinsPickedUpL4 TreasureStats += @s t_coinsPickedUpL4
scoreboard players operation CoinsPickedUpL4 TreasureStats += @s t_coinsBonusPickedUpL4
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL1 TreasureStats
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL2 TreasureStats
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL3 TreasureStats
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL4 TreasureStats

tellraw @s [{text:"Treasure",italic:false,bold:false,color:"gold","hover_event": {"action": "show_text","value": [\
{text:"Treasure Stats",color:"gold",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nTotal Treasure Pings: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_treasurePing"},color:"white"}\
,{text:"\nTreasure Queued: ",color:"gray",italic:false,bold:false}\
,{text:"\n    From Passive: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_treasureQueuePassive"},color:"white"}\
,{text:"\n    From Cards: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_treasureQueueCard"},color:"white"}\
,{text:"\n    From Circulation: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_treasureQueueCirculation"},color:"white"}\
,{text:"\nCoins Collected ",color:"gray",italic:false,bold:false},{text:"(picked up / dropped)",color:"dark_gray",italic:false,bold:false}\
,{text:"\n    Level 1: ",color:"gray",italic:false,bold:false},{"score":{"name":"CoinsPickedUpL1","objective":"TreasureStats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"CoinsDroppedL1","objective":"TreasureStats"},color:"dark_gray"}\
,{text:"\n    Level 2: ",color:"gray",italic:false,bold:false},{"score":{"name":"CoinsPickedUpL2","objective":"TreasureStats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"CoinsDroppedL2","objective":"TreasureStats"},color:"dark_gray"}\
,{text:"\n    Level 3: ",color:"gray",italic:false,bold:false},{"score":{"name":"CoinsPickedUpL3","objective":"TreasureStats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"CoinsDroppedL3","objective":"TreasureStats"},color:"dark_gray"}\
,{text:"\n    Level 4: ",color:"gray",italic:false,bold:false},{"score":{"name":"CoinsPickedUpL4","objective":"TreasureStats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"CoinsDroppedL4","objective":"TreasureStats"},color:"dark_gray"}\
,{text:"\n    Total: ",color:"gray",italic:false,bold:false},{"score":{"name":"CoinsPickedUp","objective":"TreasureStats"},color:"white"},{text:" / ",color:"dark_gray"},{"score":{"name":"CoinsDropped","objective":"TreasureStats"},color:"dark_gray"}\
,{text:"\nFragments Collected",color:"gray",italic:false,bold:false}\
,{text:"\n    From Treasure: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_researchPickedUp"},color:"white"}\
,{text:"\n    From Pots: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_researchPotPickedUp"},color:"white"}\
,{text:"\nGlint Collected",color:"gray",italic:false,bold:false}\
,{text:"\n    From Pots: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_moneyPickedUp"},color:"white"}\
,{text:"\nVaults",color:"gray",italic:false,bold:false}\
,{text:"\n    Keys Picked Up: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_vaultKeysPickedUp"},color:"white"}\
,{text:"\n    Vaults Opened: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_vaultsOpened"},color:"white"}\
,{text:"\nPots Broken: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_potsBroken"},color:"white"}\
]}},{text:"      "}\
,{text:"(Cards)",italic:true,bold:false,color:"gold","hover_event": {"action": "show_text","value": [\
{text:"Treasure Stats (Cards)",color:"gold",italic:false,bold:false},{text:" (profile)",color:"dark_gray",italic:false,bold:false}\
,{text:"\nCoins Picked Up 🔘",color:"white",italic:false,bold:false},{text:" / ",color:"dark_gray"}\
,{text:"Coins Dropped",color:"dark_gray",italic:false,bold:false},{text:" / ",color:"dark_gray"}\
,{text:"Treasure Pings 🍪",color:"gold",italic:false,bold:false}\
,{text:"\n            Passive: ",color:"gray",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_passive"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_passive"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_passive"},color:"gold"}\
\
,{text:"\n   Fallow Coffers: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_fallow_coffers"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_fallow_coffers"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_fallow_coffers"},color:"gold"}\
,{text:"\n          Herbalism: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_herbalism"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_herbalism"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_herbalism"},color:"gold"}\
,{text:"\nTreasure Hunter: ",color:"dark_aqua",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_treasure_hunter"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_treasure_hunter"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_treasure_hunter"},color:"gold"}\
\
,{text:"\n    Loot and Fruit: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_loot_and_fruit"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_loot_and_fruit"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_loot_and_fruit"},color:"gold"}\
,{text:"\n   Loot and Scoot: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_loot_and_scoot"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_loot_and_scoot"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_loot_and_scoot"},color:"gold"}\
,{text:"\n        Trust Fund: ",color:"green",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_trust_fund"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_trust_fund"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_trust_fund"},color:"gold"}\
\
,{text:"\n         Cash Crop: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_cash_crop"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_cash_crop"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_cash_crop"},color:"gold"}\
,{text:"\n         Circulation: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_circulation"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_circulation"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_circulation"},color:"gold"}\
,{text:"\n           Opulence: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_opulance"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_opulance"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_opulance"},color:"gold"}\
,{text:"\n         Prosperity: ",color:"blue",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_prosperity"},color:"white"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_coindrop_prosperity"},color:"dark_gray"}\
,{text:" / ",color:"dark_gray"},{"score":{"name":"@s","objective":"t_treasureping_prosperity"},color:"gold"}\
\
,{text:"\n       Chrysopoeia: ",color:"light_purple",italic:false,bold:false},{"score":{"name":"@s","objective":"t_coinpickup_chrysopoeia"},color:"white"}\
,{text:" / na / na",color:"dark_gray"}\
]}}]
