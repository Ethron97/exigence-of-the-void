# Called from activate_candles

## INPUT
#   #compare profile.story.puzzle_candles

#====================================================================================================

execute if score toggle.altar debug matches 1 if score debug.level debug matches 3.. run say (D3) Me setup

# Setup candles
function exigence:altar/puzzle/candle/reset

# Store current candle level
function exigence:altar/puzzle/candle/update
