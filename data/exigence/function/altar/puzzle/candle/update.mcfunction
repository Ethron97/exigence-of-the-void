# Update whether this candle is lit

## CONSTRAINTS
#   AS puzzle candle

## INPUT
#   SCORE game.puzzle_candles game.dungeon

#====================================================================================================

# Light new candle that matches score
execute if entity @s[tag=!Triggered] if score @s game.story.puzzle_candle_id <= game.puzzle_candles game.dungeon run function exigence:altar/puzzle/candle/trigger
