# Called by game on, setup altar nodes

#======================================================================================================

# Setup altar nodes
execute as @e[type=armor_stand,tag=AltarNode] run function exigence:altar/node/setup

# Activate candles if difficulty is at least 3
execute if score Difficulty DungeonRun matches 3.. run function exigence:altar/puzzle/activate_candles
