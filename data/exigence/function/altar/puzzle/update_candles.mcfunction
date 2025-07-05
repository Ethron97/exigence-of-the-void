
# Light new candle that matches score
execute as @e[type=minecraft:marker,tag=PuzzleCandle] if score @s CandleID <= @a[tag=ActivePlayer,tag=PrimaryPlayer,limit=1] PuzzleCandles run function exigence:altar/puzzle/candle/trigger
