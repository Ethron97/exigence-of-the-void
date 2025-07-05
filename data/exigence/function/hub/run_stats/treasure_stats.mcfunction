## COINS

# Calculate 

# Sum coins collected
scoreboard players set CoinsDropped TreasureStats 0
scoreboard players set CoinsDroppedL1 TreasureStats 0
scoreboard players set CoinsDroppedL2 TreasureStats 0
scoreboard players set CoinsDroppedL3 TreasureStats 0
scoreboard players set CoinsDroppedL4 TreasureStats 0
scoreboard players operation CoinsDroppedL1 TreasureStats += @s cr_coinsDroppedL1
scoreboard players operation CoinsDroppedL1 TreasureStats += @s cr_coinsBonusDroppedL1
scoreboard players operation CoinsDroppedL2 TreasureStats += @s cr_coinsDroppedL2
scoreboard players operation CoinsDroppedL2 TreasureStats += @s cr_coinsBonusDroppedL2
scoreboard players operation CoinsDroppedL3 TreasureStats += @s cr_coinsDroppedL3
scoreboard players operation CoinsDroppedL3 TreasureStats += @s cr_coinsBonusDroppedL3
scoreboard players operation CoinsDroppedL4 TreasureStats += @s cr_coinsDroppedL4
scoreboard players operation CoinsDroppedL4 TreasureStats += @s cr_coinsBonusDroppedL4
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL1 TreasureStats
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL2 TreasureStats
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL3 TreasureStats
scoreboard players operation CoinsDropped TreasureStats += CoinsDroppedL4 TreasureStats

scoreboard players set CoinsPickedUp TreasureStats 0
scoreboard players set CoinsPickedUpL1 TreasureStats 0
scoreboard players set CoinsPickedUpL2 TreasureStats 0
scoreboard players set CoinsPickedUpL3 TreasureStats 0
scoreboard players set CoinsPickedUpL4 TreasureStats 0
scoreboard players operation CoinsPickedUpL1 TreasureStats += @s cr_coinsPickedUpL1
scoreboard players operation CoinsPickedUpL1 TreasureStats += @s cr_coinsBonusPickedUpL1
scoreboard players operation CoinsPickedUpL2 TreasureStats += @s cr_coinsPickedUpL2
scoreboard players operation CoinsPickedUpL2 TreasureStats += @s cr_coinsBonusPickedUpL2
scoreboard players operation CoinsPickedUpL3 TreasureStats += @s cr_coinsPickedUpL3
scoreboard players operation CoinsPickedUpL3 TreasureStats += @s cr_coinsBonusPickedUpL3
scoreboard players operation CoinsPickedUpL4 TreasureStats += @s cr_coinsPickedUpL4
scoreboard players operation CoinsPickedUpL4 TreasureStats += @s cr_coinsBonusPickedUpL4
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL1 TreasureStats
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL2 TreasureStats
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL3 TreasureStats
scoreboard players operation CoinsPickedUp TreasureStats += CoinsPickedUpL4 TreasureStats

tellraw @s [{text:"\nTreasure",italic:false,bold:true,color:"gold"}]
tellraw @s [{text:"Total Coins Collected: ",italic:false,color:"gray"},{"score":{"name":"CoinsPickedUp","objective":"TreasureStats"},color:"gray"},{text:"/",color:"gray"},{"score":{"name":"CoinsDropped","objective":"TreasureStats"}}]

tellraw @s [{text:"\nLevel",italic:false,bold:true,color:"gray"},{text:"   "},{text:"Normal",italic:false,bold:true,color:"gray"},{text:"   "},{text:"Bonus",italic:false,bold:true,color:"gray"},{text:"   "},{text:"Total",italic:false,bold:true,color:"gray"}]
#tellraw @s [{text:"1",italic:false,bold:true,color:"gray"},{text:"       "},{text:"Normal",italic:false,bold:true,color:"gray"},{text:"   "},{text:"Bonus",italic:false,bold:true,color:"gray"},{text:"   "},{text:"Total",italic:false,bold:true,color:"gray"}]
function exigence:hub/run_stats/private/by_level_treasure {level:1,color:"gold"}
execute if score Difficulty DungeonRun matches 2.. run function exigence:hub/run_stats/private/by_level_treasure {level:2,color:"gold"}


