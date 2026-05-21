# Called by game_tick.detect_all_echos

## CONSTRAINTS
#    AS active player who has all echos/fragments in their inventory

#====================================================================================================

tellraw @a[tag=ActivePlayer] [{text:"!!!",bold:true,color:"aqua"},{text:" Echo Shard collected! Return to the exit portal with it to escape.",color:"gray",bold:false}]

# Modify storage when all echos are found
scoreboard players set game.all_echos_found game.state 1

# Clear echo/fragments
clear @s #exigence:echo

# Give proper echo shard
function exigence:player/give/echo_shard

# Give return compass
execute as @a[tag=ActivePlayer] if score @s career.settings.return_compass matches 1 run function exigence:player/give/return_compass

# Give portal compass(s) to all players if difficulty 4
execute if score game.difficulty game.state matches 4 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ExitNode] run function exigence:player/give/portal_compass

# If Final Ascension, ascend
execute if score mod.final_ascension game.modifiers matches 1 run function exigence:game/ascend
