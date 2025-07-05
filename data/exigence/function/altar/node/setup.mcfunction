# Setup/reset Altar node

## CONSTRAINTS
#   AS AltarNode

#======================================================================================================

# Reset
scoreboard players set @s NodeState -1
scoreboard players set @s Random 0
tag @s remove Red
tag @s remove ChooseLock

# Return if not on active level
execute unless score @s ObjectLevel <= Difficulty DungeonRun run return 1

# 80% to be active, 20% to be ruined
execute store result score @s Random run random value 1..5
#   Crucible altar always active
execute as @s[tag=Crucible] run scoreboard players set @s Random 1
execute if score @s Random matches 1..4 run function exigence:altar/node/activate
execute if score @s Random matches 5 run function exigence:altar/node/ruin
