# Called by game_tick.detect_all_echos

## CONSTRAINTS
#    AS active player who has all echos/fragments in their inventory

#==================================================================================================================

say All echos collected! You are free to leave the dungeon.

# Modify storage when all echos are found
data modify storage exigence:dungeon all_echos_found set value 1

# Clear echo/fragments
clear @s #exigence:echo

# Give proper echo shard
function exigence:player/give/echo_shard

# Give return compass
execute as @a[tag=ActivePlayer] unless score @s s_disableReturnCompass matches 1 run function exigence:player/give/return_compass

# Give portal compass(s) to all players if difficulty 4
execute if score Difficulty DungeonRun matches 4 as @e[type=armor_stand,tag=ExitNode] run function exigence:player/give/portal_compass

# If Final Ascension, ascend
execute if score FinalAscension Modifiers matches 1 run function exigence:game/ascend
