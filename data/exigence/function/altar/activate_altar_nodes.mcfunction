# Called by game on, setup altar nodes

#====================================================================================================

# Setup altar nodes
execute as @e[type=minecraft:armor_stand,tag=AltarNode] run function exigence:altar/node/setup

# Activate candles if difficulty is at least 3
execute if score game.difficulty game.state matches 3.. run function exigence:altar/puzzle/activate_candles
