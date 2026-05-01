# Called from activate_altar_nodes (from game load sequence)

#====================================================================================================

#say (D3) Actiate candles

# Update
execute as @e[x=-415,y=151,z=-68,dx=18,dy=11,dz=23,type=minecraft:marker,tag=PuzzleCandle] run function exigence:altar/puzzle/candle/setup
