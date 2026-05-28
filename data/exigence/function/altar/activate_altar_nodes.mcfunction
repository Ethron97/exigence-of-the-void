# Called by game load sequence

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.altar debug matches 1 if score debug.level debug matches 3.. run say (D3 Altar) Activate atlar nodes

## ALTAR NODES
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=AltarNode] at @s run function exigence:altar/node/setup

## PUZZLE CANDLES
# Setup candles if difficulty is at least 3
execute if score game.difficulty game.state matches 3.. run function exigence:altar/puzzle/activate_candles
