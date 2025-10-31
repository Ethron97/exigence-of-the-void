
# Light new candle that matches score
execute as @e[type=minecraft:marker,tag=PuzzleCandle] if score @s game.story.puzzle_candle_id <= @a[tag=ActivePlayer,tag=PrimaryPlayer,limit=1] profile.story.puzzle_candles run function exigence:altar/puzzle/candle/trigger
