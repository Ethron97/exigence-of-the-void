
#====================================================================================================

#say (D3) Update all candles

# Light new candle that matches score
execute as @e[x=-415,y=151,z=-68,dx=18,dy=11,dz=23,type=minecraft:marker,tag=PuzzleCandle] run function exigence:altar/puzzle/candle/update
